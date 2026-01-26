using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Projectile : MonoBehaviour
{
    public float forceValue;
    // Start is called before the first frame update
    void Start()
    {
        var rigidbody = GetComponent<Rigidbody>();
        rigidbody.AddForce(transform.rotation * (forceValue * Vector3.forward));
    }
}
