using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraFollow : MonoBehaviour
{
    public Transform target;
    public float distance = 5f;
    public float yaw = 0f;
    public float pitch = 0f;
    void Update()
    {
        // Lock the cursor on the screen
        Cursor.lockState = CursorLockMode.Locked;
        // Mouse input
        float mouseX = Input.GetAxis("Mouse X");
        float mouseY = Input.GetAxis("Mouse Y");
        // Update angles
        yaw += mouseX;
        pitch -= mouseY;

        // Calculate rotation and offset
        Quaternion rotation = Quaternion.Euler(pitch, yaw, 0);
        Vector3 offset = rotation * new Vector3(0, 0, -distance);

        // Apply position and rotation
        transform.position = target.position + offset;
        transform.LookAt(target.position);
    }

}
