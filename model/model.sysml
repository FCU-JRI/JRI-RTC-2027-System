/* 專案模型。從利害關係人開始，依序往下建立。 */
package Project {
    private import ScalarValues::*;
    private import ISQ::*;
    private import SI::*;
    private import JRI::*;

    package Stakeholders {
        part <'STK-TASA-001'> 'TASA 國家太空中心 (活動主辦方)' : Stakeholder {
            :>> role = "飛行安全、成功回收、符合規範";
        }
        part <'STK-ADV-002'> '指導老師' : Stakeholder {
            :>> role = "任務節點審核";
        }
        part <'STK-TEAM-003'> '團隊' : Stakeholder {
            :>> role = "團隊人力、預算與時程";
        }
        part <'STK-PPC-004'> '酬載提案委員會' : Stakeholder {
            :>> role = "液體動力實驗數據品質";
        }
        part <'STK-BDS-005'> '業務發展組' : Stakeholder {
            :>> role = "箭載影像紀錄";
        }
        requirement <'EXP-001'> '火箭發射與回收過程皆在可控安全的狀態' : Expectation {
            doc /* 火箭設計應符合太空中心提供火箭設計規範 */
        }
        requirement <'EXP-002'> '在指定時間內，完成各階段審查任務' : Expectation {
            doc /* 應在各審查節點上符合時程規劃 */
        }
        requirement <'EXP-003'> '需要在有限的資源下，完成任務' : Expectation {
            doc /* 應在核定預算、時程與人力資源內完成計劃 */
        }
        requirement <'EXP-004'> '需提供一載具平台進行液體動力行為實驗' : Expectation {
            doc /* 工程團隊應符合提案委員會提出之需求框架打造出一枚探空火箭 */
        }
        requirement <'EXP-005'> '取得火箭升空影像' : Expectation {
            doc /* 工程團隊應針對業務發展組提出之需求，收集火箭箭載畫面 */
        }
    }
    #trace dependency from Project::Stakeholders::'火箭發射與回收過程皆在可控安全的狀態' to Project::Stakeholders::'TASA 國家太空中心 (活動主辦方)';

    package Structure {
    }
    #derive dependency from Project::Stakeholders::'酬載提案委員會' to Project::Stakeholders::'團隊';
    #derive dependency from Project::Stakeholders::'業務發展組' to Project::Stakeholders::'團隊';
    #trace dependency from Project::Stakeholders::'在指定時間內，完成各階段審查任務' to Project::Stakeholders::'指導老師';
    #trace dependency from Project::Stakeholders::'需要在有限的資源下，完成任務' to Project::Stakeholders::'團隊';
    #trace dependency from Project::Stakeholders::'需提供一載具平台進行液體動力行為實驗' to Project::Stakeholders::'酬載提案委員會';
    #trace dependency from Project::Stakeholders::'取得火箭升空影像' to Project::Stakeholders::'業務發展組';

    package NGOs {
        requirement <'NEED-001'> 'JRI 需要在 2027 台灣盃的時程與有限資源內，於符合 TASA 安全規範的前提下取得液體在真實飛行環境中的動力行為，並留下可用於對外推廣的飛行影像。' : Need {
            doc /* 設計、製造、驗證並發射一枚使用 pioneer-10K 公版固態發動機的 3K 組探空火箭，於旭海科研火箭發射場以 84° ±1° 向正東發射，完成雙階段回收、濺落漂浮，並取回飛行數據、晃動實驗數據與機載影像。 */
        }
    }
    #trace dependency from Project::NGOs::'JRI 需要在 2027 台灣盃的時程與有限資源內，於符合 TASA 安全規範的前提下取得液體在真實飛行環境中的動力行為，並留下可用於對外推廣的飛行影像。' to Project::Stakeholders::'TASA 國家太空中心 (活動主辦方)';
    #derive dependency from Project::NGOs::'JRI 需要在 2027 台灣盃的時程與有限資源內，於符合 TASA 安全規範的前提下取得液體在真實飛行環境中的動力行為，並留下可用於對外推廣的飛行影像。' to Project::Stakeholders::'指導老師';
}
