using UnityEngine;

public class EnemyStateMachine : StateMachine
{
    public float movementSpeed = 5f;
    [HideInInspector]
    public Rigidbody rigidbody;

    public void Start()
    {
        rigidbody = GetComponent<Rigidbody>();
        SetCurrentState(new Chase(this));
    }

    public void FixedUpdate()
    {
        ExecuteCurrentState();
    }

    public void Update()
    {
        CheckForTransitions();
    }

    public override void CheckForTransitions()
    {
        switch (currentState)
        {
            case Evade:
                if (Input.GetKeyDown(KeyCode.Alpha1))
                {
                    SetCurrentState(new Chase(this));
                }
                break;
            case Chase:
                if (Input.GetKeyDown(KeyCode.Alpha2))
                {
                    SetCurrentState(new Evade(this));
                }
                break;
        }
    }
}

public abstract class StateMachine : MonoBehaviour
{
    protected State currentState;

    public void SetCurrentState(State state)
    {
        Debug.Log($"Starting {state.GetType()}");
        if (currentState != null) currentState.ExitState();
        currentState = state;
        currentState.EnterState();
    }

    public void ExecuteCurrentState()
    {
        currentState.ExecuteState();
    }

    public virtual void CheckForTransitions()
    {

    }
}

public class Chase : State
{
    public Player player;
    public Chase(StateMachine stateMachine) : base(stateMachine)
    {

    }

    public override void EnterState()
    {
        player = Transform.FindFirstObjectByType<Player>();
    }

    public override void ExecuteState()
    {
        if (player == null) return;

        var movementSpeed = 1f;
        Rigidbody rigidbody = null;

        if (stateMachine.GetType() == typeof(EnemyStateMachine))
        {
            var enemyStateMachine = (EnemyStateMachine)stateMachine;
            movementSpeed = enemyStateMachine.movementSpeed;
            rigidbody = enemyStateMachine.rigidbody;
        }

        var currentPosition = stateMachine.transform.position;
        var playerPosition = player.transform.position;
        var chaseDirection = (playerPosition - currentPosition);
        chaseDirection.y = 0f;
        chaseDirection = chaseDirection.normalized;
        var nextPosition = Vector3.LerpUnclamped(currentPosition, currentPosition + chaseDirection, movementSpeed * Time.deltaTime);

        var currentRotation = stateMachine.transform.rotation;
        var nextRotation = Quaternion.LerpUnclamped(stateMachine.transform.rotation, Quaternion.LookRotation(chaseDirection, Vector3.up), movementSpeed * Time.deltaTime);

        rigidbody.rotation = nextRotation;
        rigidbody.velocity = chaseDirection * movementSpeed;
    }

    public override void ExitState()
    {
        
    }
}

public class Evade : State
{
    public Player player;
    public Evade(StateMachine stateMachine) : base(stateMachine)
    {
    }

    public override void EnterState()
    {
        player = Transform.FindFirstObjectByType<Player>();
    }

    public override void ExecuteState()
    {
        if (player == null) return;

        var movementSpeed = 1f;
        Rigidbody rigidbody = null;

        if (stateMachine.GetType() == typeof(EnemyStateMachine))
        {
            var enemyStateMachine = (EnemyStateMachine)stateMachine;
            movementSpeed = enemyStateMachine.movementSpeed;
            rigidbody = enemyStateMachine.rigidbody;
        }

        var currentPosition = stateMachine.transform.position;
        var playerPosition = player.transform.position;
        var evadeDirection = (currentPosition - playerPosition);
        evadeDirection.y = 0f;
        evadeDirection = evadeDirection.normalized;
        var nextPosition = Vector3.LerpUnclamped(currentPosition, currentPosition + evadeDirection * movementSpeed, Time.deltaTime);

        var currentRotation = stateMachine.transform.rotation;
        var nextRotation = Quaternion.LerpUnclamped(stateMachine.transform.rotation, Quaternion.LookRotation(evadeDirection, Vector3.up), movementSpeed * Time.deltaTime);

        rigidbody.Move(nextPosition, nextRotation);
    }

    public override void ExitState()
    {
        
    }
}

public abstract class State
{
    protected StateMachine stateMachine;

    public State(StateMachine stateMachine)
    {
        this.stateMachine = stateMachine;
    }

    public virtual void EnterState()
    {
    }

    public virtual void ExecuteState()
    {
    }

    public virtual void ExitState()
    {
    }
}