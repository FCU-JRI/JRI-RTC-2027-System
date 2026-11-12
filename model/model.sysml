/* 專案模型。從利害關係人開始，依序往下建立。 */
package Project {
    private import ScalarValues::*;
    private import ISQ::*;
    private import SI::*;
    private import JRI::*;

    package Stakeholders {
        part <'STK-001'> TASA : Stakeholder;
        part <'STK-002'> 'TASA 國家太空中心 (活動主辦方)' : Stakeholder {
            :>> role = "飛行安全、成功回收、符合規範";
        }
    }
}
