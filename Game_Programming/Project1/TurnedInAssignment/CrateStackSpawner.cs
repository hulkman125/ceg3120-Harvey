using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CrateStackSpawner : MonoBehaviour
{
    // Start is called before the first frame update
    public GameObject cratePrefab;
    public GameObject newCrate;
    void Start()
    {
        CreateNewCrates();
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.R))
        {
            DeleteOldCrates();
            CreateNewCrates();
        }
    }

    void CreateNewCrates()
    {
        if(cratePrefab != null)
        {
            var newCrateStack = Instantiate(cratePrefab, null);
            newCrateStack.transform.position = new Vector3(0, 2, 0);
            newCrate = newCrateStack;
        }
    }

    void DeleteOldCrates()
    {
        if(newCrate != null)
        {
            Destroy(newCrate);
        }
    }
}
