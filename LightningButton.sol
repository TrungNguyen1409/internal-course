/*
    Easy: Build a smart contract that allows anyone to set the value of a string in exchange for a fixed price of ETH. 
    Once updated, the value should be locked for a fixed time before it can be changed again.

 */

// 1. specify your Liscense

// 2. In which solidity version you wish to code this smart contract?

// 3. Don't forget to define your contract. Remember how?

// Let's get into the contract's body:

// 4. think about which state variable do you need?

/* Hint: 
+ one for restricting lock_period: 1 minute, 2 minutes , or just seconds?
+ one for the price to change the state variable
+ . . . . what else?
*/

// 5. Constructor?

// 6. Most important part: let's implement the function to set the state variable:

/*
    remember:
    It should be able to keep track of the last change made time stamp
    It should be able to deny action when lock period still active
    It should require the sufficient amount of ETH before changing the state variable
    It should be able to set the state variable

*/