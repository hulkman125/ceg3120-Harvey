using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FloorDetector : MonoBehaviour
{
    [SerializeField]
    private int numberOfContacts = 0;
    private void OnTriggerEnter(Collider other)
    {
        if (LayerMask.LayerToName(other.gameObject.layer) == "Floor" || LayerMask.LayerToName(other.gameObject.layer) == "Special Wall")
        {
            Debug.Log($"The floor detector made contact with {other.name}");
            numberOfContacts++;
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (LayerMask.LayerToName(other.gameObject.layer) == "Floor" || LayerMask.LayerToName(other.gameObject.layer) == "Special Wall")
        {
            Debug.Log($"The floor detector stopped making contact with {other.name}");
            numberOfContacts--;
        }
    }

    public bool IsTouchingGround()
    {
        return numberOfContacts > 0;
    }
}
