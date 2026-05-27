using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Projectile : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        var forceInDirection = transform.rotation * new Vector3(0f, 0f, 45f);
        GetComponent<Rigidbody>().AddForce(forceInDirection, ForceMode.Impulse);
    }

    private void OnCollisionEnter(Collision other)
    {
        var otherCrateHealth = other.gameObject.GetComponent<CrateHealth>();
        if(otherCrateHealth != null)
        {
            otherCrateHealth.TakeDamage(50);
        }
    }
}
