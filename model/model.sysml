/* 專案模型。從利害關係人開始，依序往下建立。 */
package Project {
    private import ScalarValues::*;
    private import ISQ::*;
    private import SI::*;
    private import JRI::*;

    package Stakeholders {
        part <'STK-001'> 'TASA 國家太空中心 (活動主辦方)' : Stakeholder {
            :>> role = "飛行安全、成功回收、符合規範";
        }
        part <'STK-002'> '指導老師' : Stakeholder {
            :>> role = "任務節點審核";
        }
        part <'STK-003'> '團隊' : Stakeholder {
            :>> role = "團隊人力、預算與時程";
        }
    }
}
