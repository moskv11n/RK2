#include <gtest/gtest.h>
#include "concrete_handler.h"

TEST(ChainOfResponsibilityTest, ManagerApproval) {
    IHandler* manager = new Manager();
    testing::internal::CaptureStdout();
    manager->HandleRequest(1);
    std::string output = testing::internal::GetCapturedStdout();
    EXPECT_EQ(output, "Manager 批准了 1 天假\n");
    delete manager;
}

TEST(ChainOfResponsibilityTest, DirectorApproval) {
    IHandler* manager = new Manager();
    IHandler* director = new Director();
    manager->SetSuccessor(director);
    
    testing::internal::CaptureStdout();
    manager->HandleRequest(3);
    std::string output = testing::internal::GetCapturedStdout();
    EXPECT_EQ(output, "Director 批准了 3 天假\n");
    
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
    EXPECT_EQ(output, "CEO 批准了 5 天假\n");
    
    // Test CEO denying more than 7 days of leave
    testing::internal::CaptureStdout();
    manager->HandleRequest(10);
    output = testing::internal::GetCapturedStdout();
    EXPECT_EQ(output, "给你放长假，以后不用来上班啦！\n");

    delete manager;
    delete director;
    delete ceo;
}
