using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour
{
    public GameObject projectilePrefab;
    public Transform cameraTransform;
    private Rigidbody rigidBody;
    private bool playerJumped;
    private Vector2 desiredMovement;
    public FloorDetector floorDetector;
    // Start is called before the first frame update
    void Start()
    {
        rigidBody = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            playerJumped = true;
        }

        if (Input.GetMouseButtonDown(0))
        {
            var newProjectile = Instantiate(projectilePrefab);

            var direction = (transform.position - cameraTransform.position).normalized;

            newProjectile.transform.position = 0.5f * direction + transform.position;
            newProjectile.transform.rotation = cameraTransform.rotation;

            Destroy(newProjectile, 5f);
        }

        // desiredMovement has 2 directions, X and Y, for horizontal and vertical
        desiredMovement.x = Input.GetAxis("Horizontal");
        desiredMovement.y = Input.GetAxis("Vertical");

    }
    private void FixedUpdate()
    {
        if (rigidBody == null)
            return;
        
        if (playerJumped && floorDetector.IsTouchingGround())
        {
            var force = new Vector3(0, 20f, 0);
            rigidBody.AddForce(force, ForceMode.VelocityChange);
            playerJumped = false;
        }

        var currentYVelocity = rigidBody.velocity.y;
        var localMovement = new Vector3(desiredMovement.x, 0f, desiredMovement.y);
        var newVelocity = 5f * (cameraTransform.rotation * localMovement);
        newVelocity.y = currentYVelocity;
        rigidBody.velocity = newVelocity;

        //rigidBody.AddForce(newVelocity, ForceMode.VelocityChange);
    }
}
