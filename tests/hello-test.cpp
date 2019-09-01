#include <gtest/gtest.h>
#include "hello.h"
#include <string.h>

TEST(helloTest, basic) { 
    const char * expected = "Hello, World!\n";
    const char * actual = hello();

    ASSERT_EQ(strlen(expected), strlen(actual));

    for(int i=0; i<strlen(actual);i++){
        ASSERT_EQ(expected[i],actual[i]);
    }
    
}
 
int main(int argc, char **argv) {
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}