#include <gtest/gtest.h>
#include "concrete_handler.h"

TEST(ChainOfResponsibilityTest, ManagerApproval) {
    IHandler* manager = new Manager();
    testing::internal::CaptureStdout();
    manager->HandleRequest(1);
    std::string output = testing::internal::GetCapturedStdout();
    EXPECT_EQ(output, "Manager: 1\n");
    delete manager;
}

TEST(ChainOfResponsibilityTest, DirectorApproval) {
    IHandler* manager = new Manager();
    IHandler* director = new Director();
    manager->SetSuccessor(director);
    
    testing::internal::CaptureStdout();
    manager->HandleRequest(3);
    std::string output = testing::internal::GetCapturedStdout();
    EXPECT_EQ(output, "Director: 3\n");
    
    delete manager;
    delete director;
}

TEST(ChainOfResponsibilityTest, CEOApproval) {
    IHandler* manager = new Manager();
    IHandler* director = new Director();
    IHandler* ceo = new CEO();
    
    manager->SetSuccessor(director);
    director->SetSuccessor(ceo);
    
    // Test CEO approving 5 days of leave
    testing::internal::CaptureStdout();
    manager->HandleRequest(5);
    std::string output = testing::internal::GetCapturedStdout();
    EXPECT_EQ(output, "CEO: 5\n");
    
    // Test CEO denying more than 7 days of leave
    testing::internal::CaptureStdout();
    manager->HandleRequest(10);
    output = testing::internal::GetCapturedStdout();
    EXPECT_EQ(output, "bye\n");

    delete manager;
    delete director;
    delete ceo;
}
