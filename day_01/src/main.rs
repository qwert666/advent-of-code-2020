use std::env;
use std::fs;


fn main() {
  let args: Vec<String> = env::args().collect();
  let input = &args[1];
  println!("Reading file {}", input);
  let contents = fs::read_to_string(input)
      .expect("Something went wrong reading the file");

  let input_vals: Vec<i32> = contents.trim().split("\n").into_iter().map(|value| {
    value.parse::<i32>().unwrap()
  }).collect();

  println!("{}", input_vals.iter().filter(|&&x| { 
    input_vals.contains(&(2020 - x))
  }).product::<i32>())
}