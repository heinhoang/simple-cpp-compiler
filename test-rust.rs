use std::libc::c_int;

#[link_args = "-lsilly"]
extern {
    fn silly_run(num: c_int) -> ();
}

fn main() {
    unsafe { silly_run(5); }
    println("Ran the unsafe code.");
}