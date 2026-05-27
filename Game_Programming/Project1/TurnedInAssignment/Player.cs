using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour
{
    private bool jumpWasPressed;
    public Vector2 desiredMovement;
    private Rigidbody rigidBody;
    public FloorDetector floorDetector;
    public Transform cameraTransform;
    public GameObject projectile;
    // Start is called before the first frame update
    void Start()
    {
        // Get the Rigidbody when this script first starts running
        rigidBody = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {
        // Check if the user pressed Space this frame
        if (Input.GetKeyDown(KeyCode.Space))
        {
            jumpWasPressed = true; // The user pressed the jump button
        }

        // If the user hits the mouse button, fire the projectile
        if (Input.GetMouseButtonDown(0))
        {
            FireProjectile();
        }

        // desiredMovement has 2 directions, X and Y, for horizontal and vertical
        desiredMovement.x = Input.GetAxis("Horizontal");
        desiredMovement.y = Input.GetAxis("Vertical");
    }

    // FixedUpdate is called once per fixed frame
    private void FixedUpdate()
    {
        // Check for the Rigidbody
        // If it's not found, return, we have nothing left to do!
        if (rigidBody == null) return;

        // Ask the floor detector if we're touching the floor
        var isTouchingFloor = floorDetector.IsTouchingFloor();

        // If the user pressed the jump button
        // AND the player is touching the floor
        if (jumpWasPressed && isTouchingFloor)
        {
            // Apply the force
            var force = new Vector3(0f, 10f, 0f);
            rigidBody.AddForce(force, ForceMode.VelocityChange);

            // Reset jumpWasPressed
            jumpWasPressed = false;
        }

        // Get the current velocity
        var currentVelocity = rigidBody.linearVelocity;

        // Apply movement in the x and z direction based on the camera's rotation
        var localMovement = new Vector3(desiredMovement.x, 0f, desiredMovement.y);
        var newVelocity = 5f * (cameraTransform.rotation * localMovement);

        // Let's not lose the y velocity we gained from jumping!
        newVelocity.y = currentVelocity.y;

        rigidBody.linearVelocity = newVelocity;
    }

    private void FireProjectile()
    {
        var newProjectile = Instantiate(projectile, null);
        var direction = (transform.position - cameraTransform.position).normalized;

        newProjectile.transform.rotation = cameraTransform.rotation;
        newProjectile.transform.position = 0.5f * direction + transform.position;

        Destroy(newProjectile, 5f);
    }
}