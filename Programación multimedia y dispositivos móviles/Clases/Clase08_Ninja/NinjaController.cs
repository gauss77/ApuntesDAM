using UnityEngine;

public class NinjaController : MonoBehaviour {

    private Animator ninjaAnimator;

    void Start() {
        ninjaAnimator = this.GetComponent<Animator>();
    }

    void Update() {
        ninjaAnimator.SetBool("IsRunning", (Input.GetKey(KeyCode.A) || Input.GetKey(KeyCode.D)) ? true : false);
        if (Input.GetKeyDown(KeyCode.Space)) {
            ninjaAnimator.SetTrigger("JumpTrigger");
        } else if (Input.GetKeyDown(KeyCode.LeftControl)) {
            ninjaAnimator.SetTrigger("SlideTrigger");
        } else if (Input.GetKeyDown(KeyCode.Alpha2)) {
            ninjaAnimator.SetTrigger("AttackTrigger");
        } else  if (Input.GetKeyDown(KeyCode.Alpha3)) {
            ninjaAnimator.SetTrigger("ThrowTrigger");
        }
    }

}
