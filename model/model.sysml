/* 專案模型。從利害關係人開始，依序往下建立。 */
package Project {
    private import ScalarValues::*;
    private import ISQ::*;
    private import SI::*;
    private import JRI::*;

    package Stakeholders {
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
        public import 'JRI 團隊'::*;
        package 'JRI 團隊' {
            part <'STK-003'> '副社長暨營運長' : Stakeholder {
                doc /* 次團隊內部第二高職級，對應主辦單位簡章規定每隊必設之副隊長，並為指定聯繫窗口之一。 */
                :>> role = "副社長暨營運長負責團隊之營運與資源調度，關注時程規劃與甘特圖之維護、各階段報告之如期繳交，以及人力於十五人上限內之合理配置。經費方面，其關注預算執行、零件表與關鍵採購項目之交期，以及贊助與合約義務之履行。文件方面，其關注文件之歸檔、版本管理與存取權限，使實際飛行構型得以追溯至核准版本。行政方面，其與隊長同為主辦單位聯繫窗口，關注報名資格文件、成員異動通報、報名費繳交及發射執照測驗之安排。決賽期間，其關注運輸、住宿、進場人員名單與現場補給等後勤事項，並於隊長無法執行職務時代行對外聯繫。整體而言，其以團隊於既定時程與資源內完成各階段交付為主要關注，對技術基準不具決定權。";
            }
            part <'STK-004'> '指導員2-管制官暨安全官' : Stakeholder {
                doc /* 管制官暨安全官為逆熵航太指派之顧問（職級 R-VIII），一團隊至多一位，對應主辦單位簡章之指導員。其負責監督團隊遵循工程指導原則，提供學術與技術指導，並得於發現安全隱患時勒令全體或部分停工。品質保證方面，其核可全系統整合及測試備便審查、飛行備便審查以外之各項審查，並於測試備便審查後公布結果、將測試申請送交教職員顧問。 */
                :>> role = "管制官暨安全官負責監督團隊遵循工程指導原則，關注各階段設計審查之如實執行、審查結果之登錄，以及前次審查問題之結案。安全方面，其關注地面測試與射場作業之標準作業程序、安全協議與緊急應變程序是否完備，儲能裝置與推進系統於各作業階段是否處於已知之安全狀態，以及人員防護裝備與安全距離之落實；發現安全隱患時，其得逕行勒令停工。技術方面，其為全系統整合之核可者，關注次系統整合後之整體功能、重量與重心、穩定度及安全係數是否符合設計基準。異常處理方面，其關注所有故障均經記錄、調查並完成矯正措施。對外，其為主辦單位認定之指導員，關注危險性測試之現場監督責任，以及團隊於決賽通過發射許可審查之能力。整體而言，其以人員安全與程序合規為首要關注，位階高於時程與競賽成績。";
            }
            part <'STK-005'> '指導員1-教職員顧問' : Stakeholder {
                doc /* 教職員顧問由大專院校教師受委任擔任（職級 F-VIII），性質類同校內社團之指導老師，對應主辦單位簡章之指導員。其負責簽署對校方之文件、與校方溝通協調，並為測試備便審查與飛行備便審查之最高核可者；未經其許可，不得進行點火或飛行，違反者團隊得遭暫時或永久中止，成員並可能受校方懲處。其另負責與校方安排熱火測試日期並簽核測試申請表，得於發現安全隱患時勒令全體或部分停工。 */
                :>> role = "教職員顧問為團隊對校方之負責人，關注團隊活動是否符合校方規定、場地與設備之使用是否經正式程序，以及學生之人身安全。審查方面，其為測試與飛行放行之最終核可者，關注備便審查是否確實召開、測試標準作業程序與安全協議及緊急程序是否隨審查提交，以及管制官之審查結果與先前問題之結案狀況。責任方面，其以個人名義簽署文件，關注事故發生時之法律與行政責任，故對證據不足或風險未明之測試傾向不予放行。對外，其為主辦單位認定之指導員，關注危險性測試之現場監督，以及團隊於競賽期間之行為是否損及校譽。整體而言，其以學生安全與校方合規為首要關注，對技術細節之涉入程度低於管制官。";
            }
            part <'STK-006'> '組長暨責任工程師' : Stakeholder {
                doc /* 組長暨責任工程師為各次系統組之負責人（職級 O-V），屬次團隊幹部。其負責所屬次系統之開發、製造與組裝，並為該範圍內品質保證之核可者；次系統整合以上之事項則須送請總工程師核可。其得設定優先度至「最優先」（P3），文件存取等級比照幹部。指導原則未依組別區分職責，結構、航電、回收、酬載等各組組長均適用本項。 */
                :>> role = "組長暨責任工程師對所屬次系統之設計與實作負責，關注次系統需求是否明確並可追溯至系統需求、設計是否滿足設計規範之相關條文，以及分配之重量、空間與電力額度是否足夠。品質方面，其為次系統開發、製造與組裝之核可者，關注零件加工是否符合公差、製造過程是否留有紀錄，以及模擬與計算是否量化不確定度。介面方面，其關注與相鄰次系統之機械、電氣及資料介面是否及早定義且不被片面更動，以利通過總工程師之整合簽核。驗證方面，其關注次系統地面測試之規劃與執行、測試證據之完整，以及故障之記錄與調查。人力方面，其關注組員之分工、訓練與進度，並於必要時提高任務優先度。整體而言，其以所屬次系統如期交付並通過整合為主要關注。";
            }
            part <'STK-007'> '核心成員' : Stakeholder {
                doc /* 核心成員為各組之主要執行者（職級 O-IV），位階介於組長與一般組員之間。 */
                :>> role = "核心成員負責次系統內之具體設計、製造、組裝與測試工作，關注所承接任務之需求是否明確、判定標準是否可量測，以及所需之工具、材料與設備是否到位。品質方面，其於加工流程中擔任設計者或加工者之簽核角色，關注圖面之單位、公差與關鍵尺寸是否標示完整，以及製造筆記與測試紀錄是否如實填寫。作業方面，其多為實際操作危險性測試及決賽進場之人員，關注標準作業程序是否可行、操作時之人身安全，以及是否取得發射執照。協作方面，其關注與其他組成員間之介面資訊是否即時同步，以及設計變更是否經正式通知。整體而言，其以所承接之工作項目如期完成並通過組長核可為主要關注。";
            }
            part <'STK-017'> '業務發展組' : Stakeholder {
                doc /* 業務發展組屬於JRI 內部營運部門，其負責對外業務接洽。 */
                :>> role = "箭載影像取得、團隊形象、對外招募";
            }
            part <'STK-018'> '酬載提案委員會' : Stakeholder {
                doc /* 酬載提案委員會（Payload Proposal Committee, PPC）是本計劃酬載任務提出者。它代表液體動力實驗的使用者，負責定義「要量測什麼、量到什麼程度才算成功」，並在任務結束後使用取得的數據。 */
                :>> role = "影像紀錄、酬載實驗數據";
            }
        }
        public import '主辦與規範'::*;
        package '主辦與規範' {
            part <'STK-008'> '國家太空中心' : Stakeholder {
                doc /* 競賽主辦單位，發射場之使用機關，提供公版發動機、發射架、軌道滑塊及 3K 組 GPS 追蹤器 */
                :>> role = "發射安全、人才培育成效、活動形象、設備依技術資料正確安裝與使用";
            }
            part <'STK-009'> '承辦單位' : Stakeholder {
                doc /* 競賽規則與火箭設計規範之制定者 */
                :>> role = "規範之明確與可執行、賽務順利";
            }
        }
        public import '審查與評分'::*;
        package '審查與評分' {
            part <'STK-010'> '評審團' : Stakeholder {
                doc /* 七位專家，評定各階段報告、海報及決賽飛行成績 */
                :>> role = "需求可追溯、證據充分、成功判定可量測、團隊理解設計";
            }
            part <'STK-011'> '發射許可審查委員' : Stakeholder {
                doc /* 決賽現場分站審查文件、外觀、重量、射場及上架備便，具最終否決權 */
                :>> role = "設計規範逐項符合、回收系統可靠、儲能裝置狀態可確認";
            }
        }
        public import '射場作業'::*;
        package '射場作業' {
            part <'STK-012'> '推進系統工作人員' : Stakeholder {
                doc /* 負責安裝點火器、連接點火線路 */
                :>> role = "發動機可快速安裝、接線時火箭處於安全狀態";
            }
            part <'STK-013'> '發射指揮官與射場管理人員' : Stakeholder {
                doc /* 執行發射前確認、倒數及人員管制 */
                :>> role = "發射條件全數滿足、風速於限制內、時程不延誤";
            }
            part <'STK-014'> '官方計時員與直播團隊' : Stakeholder {
                doc /* 三位計時員記錄起飛至落海時間，直播畫面為正式計時來源 */
                :>> role = "起飛與落海清晰可辨、隊伍可識別";
            }
        }
        public import '回收作業'::*;
        package '回收作業' {
            part <'STK-015'> '回收漁船船員' : Stakeholder {
                doc /* 於安全回收區外圍待命，負責搜尋與打撈 */
                :>> role = "目標易於發現、箭體持續漂浮、打撈時無傷人之虞";
            }
            part <'STK-016'> '無人機操作員' : Stakeholder {
                doc /* 追蹤開傘之火箭並回報位置予漁船 */
                :>> role = "開傘可目視確認、定位訊號持續有效";
            }
        }
        public import '其他參賽者'::*;
        package '其他參賽者' {
            part <'STK-019'> '其他發射隊伍' : Stakeholder {
                doc /* 每輪至多六支火箭 */
                :>> role = "無線電頻道不受干擾、發射時程不受拖延";
            }
        }
        public import '法規'::*;
        package '法規' {
            part <'STK-020'> '國家通訊傳播委員會' : Stakeholder {
                doc /* 無線電頻率與發射功率之主管機關 */
                :>> role = "頻段與功率合法、使用業餘頻段者持有執照";
            }
        }
        public import '供應'::*;
        package '供應' {
            part <'STK-021'> '零件與材料供應商' : Stakeholder {
                doc /* 提供商規零件、材料 */
                :>> role = "規格明確、交期與數量可行";
            }
        }
        part <'STK-002'> '總工程師暨隊長' : Stakeholder {
            doc /* 正式職稱為「社長暨總工程師」，是次團隊內部的最高職級，對應 TASA 簡章的隊長。在他之上還有兩位顧問（教職員顧問、管制官）。 */
            :>> role = "總工程師暨隊長負責確保全隊依工程指導原則之開發週期與審查程序執行，並對次系統整合及加工零件之最終簽核負責，故關注各次系統之介面相容性、重量與重心分配，以及零件是否符合設計公差。全系統整合、推力測試與飛行測試之備便審查須送請管制官或教職員顧問核可，其關注送審證據之完整性、測試紀錄之可追溯性，以及前次審查問題之結案狀況。時程方面，其關注各階段報告之準時繳交、關鍵測試於第二次設計審查前完成，以及緊急優先度之適當運用。對外，其為主辦單位之指定聯繫窗口，關注成員異動通報、報到文件與發射執照等資格事項之完備。整體而言，其以火箭順利升空並完成回收為最終關注，蓋決賽飛行占總成績百分之四十五，未發射者該項以零分計。";
        }
        requirement <'EXP-006'> '任務完全成功' : Expectation {
            doc /* 總工程師對任務成敗負最終責任。完全成功的定義見任務成功準則：通過審查、安全飛行，並取回飛行數據、酬載數據和箭載影像。 */
        }
        requirement <'EXP-007'> '計劃在核定預算內完成' : Expectation {
            doc /* 營運長負責團隊財務。超支會影響社團營運和之後年度的經費申請。 */
        }
        requirement <'EXP-008'> '提升團隊能見度' : Expectation {
            doc /* 社團要長期經營，需要持續招募成員，也需要爭取贊助和合作資源。 */
        }
        requirement <'EXP-009'> '安全許可審查' : Expectation {
            doc /* 團隊應針對各項火箭設計項目與測試計劃項安全官提出審查，並於安全官與指導老師核可後，方可進行製造與測試 */
        }
        requirement <'EXP-010'> '計劃耗材經費符合學校規定' : Expectation {
            doc /* 計劃耗材經費應符合校方規定且應提前申請方可進行核銷 */
        }
    }

    package Structure {
    }

    package NGOs {
        requirement <'NEED-001'> 'JRI 需要在 2027 台灣盃的時程與有限資源內，於符合 TASA 安全規範的前提下取得液體在真實飛行環境中的動力行為，並留下可用於對外推廣的飛行影像。' : Need {
            doc /* 設計、製造、驗證並發射一枚使用 pioneer-10K 公版固態發動機的 3K 組探空火箭，於旭海科研火箭發射場以 84° ±1° 向正東發射，完成雙階段回收、濺落漂浮，並取回飛行數據、晃動實驗數據與機載影像。 */
        }
    }

    package UseCases {
        use case <'UC-011'> '製造與組裝' : UseCase;
        use case <'UC-012'> '審核危險作業程序' : UseCase;
        use case <'UC-013'> '執行分系統地面測試' : UseCase;
        use case <'UC-014'> '執行全箭整合測試' : UseCase;
        use case <'UC-015'> '執行飛行準備審查與核可' : UseCase;
        public import '飛行與回收'::*;
        package '飛行與回收' {
            use case <'UC-025'> '取回火箭並提交飛行數據' : UseCase;
            use case <'UC-024'> '海上回收火箭' : UseCase;
            use case <'UC-023'> '追蹤火箭位置與落點' : UseCase;
        }
        public import '設計與審查'::*;
        package '設計與審查' {
            use case <'UC-027'> '定義酬載需求與數據需求' : UseCase;
            use case <'UC-010'> '執行官方設計審查' : UseCase;
            use case <'UC-009'> '提交設計審查文件' : UseCase;
            use case <'UC-008'> '內部審查' : UseCase;
            use case <'UC-007'> '分系統設計' : UseCase;
            use case <'UC-006'> '管理需求與系統模型' : UseCase;
            use case <'UC-032'> '確認射頻器材合法性' : UseCase;
            use case <'UC-033'> '設定發射頻率與功率' : UseCase;
            use case <'UC-034'> '提出採購規格' : UseCase;
            use case <'UC-035'> '詢價與確認交期與數量' : UseCase;
        }
        public import '計劃管理'::*;
        package '計劃管理' {
            use case <'UC-031'> '取得業餘無線電人員執照' : UseCase;
            use case <'UC-001'> '報名參賽與提交計劃書' : UseCase;
            use case <'UC-002'> '核定計劃與經費' : UseCase;
            use case <'UC-003'> '管理預算與採購' : UseCase;
            use case <'UC-004'> '管理人力與排程' : UseCase;
            use case <'UC-005'> '對外宣傳與招募' : UseCase;
            use case <'UC-026'> '提交酬載實驗提案' : UseCase;
            use case <'UC-028'> '提出影像紀錄需求' : UseCase;
        }
        public import '發射場作業'::*;
        package '發射場作業' {
            use case <'UC-016'> '執行發射許可審查' : UseCase;
            use case <'UC-018'> '上架並啟動回收系統' : UseCase;
            use case <'UC-020'> '執行倒數與發射' : UseCase;
            use case <'UC-021'> '計時並直播發射過程' : UseCase;
            use case <'UC-017'> '安裝公版發動機' : UseCase;
            use case <'UC-022'> '空拍飛行與回收過程' : UseCase;
            use case <'UC-019'> '終止發射並解除啟動' : UseCase;
            use case <'UC-029'> '協調無線電頻道分配' : UseCase;
            use case <'UC-030'> '共用射場設施與作業區' : UseCase;
        }
        public import '任務後'::*;
        package '任務後' {
            use case <'UC-036'> '評定競賽成績' : UseCase;
            use case <'UC-037'> '分析酬載實驗數據' : UseCase;
            use case <'UC-038'> '提交飛行後報告' : UseCase;
        }
    }
    #trace dependency from Project::UseCases::'報名參賽與提交計劃書' to Project::Stakeholders::'總工程師暨隊長';
    #trace dependency from Project::UseCases::'核定計劃與經費' to Project::Stakeholders::'總工程師暨隊長';
    #trace dependency from Project::UseCases::'管理預算與採購' to Project::Stakeholders::'副社長暨營運長';
    #trace dependency from Project::UseCases::'管理人力與排程' to Project::Stakeholders::'總工程師暨隊長';
    #trace dependency from Project::UseCases::'對外宣傳與招募' to Project::Stakeholders::'業務發展組';
    #trace dependency from Project::UseCases::'管理需求與系統模型' to Project::Stakeholders::'總工程師暨隊長';
    #trace dependency from Project::UseCases::'管理需求與系統模型' to Project::Stakeholders::'組長暨責任工程師';
    #trace dependency from Project::UseCases::'分系統設計' to Project::Stakeholders::'組長暨責任工程師';
    #trace dependency from Project::UseCases::'分系統設計' to Project::Stakeholders::'核心成員';
    #trace dependency from Project::UseCases::'內部審查' to Project::Stakeholders::'指導員1-教職員顧問';
    #trace dependency from Project::UseCases::'內部審查' to Project::Stakeholders::'指導員2-管制官暨安全官';
    #trace dependency from Project::UseCases::'提交設計審查文件' to Project::Stakeholders::'組長暨責任工程師';
    #trace dependency from Project::UseCases::'提交設計審查文件' to Project::Stakeholders::'總工程師暨隊長';
    #trace dependency from Project::UseCases::'執行官方設計審查' to Project::Stakeholders::'評審團';
    #trace dependency from Project::UseCases::'製造與組裝' to Project::Stakeholders::'核心成員';
    #trace dependency from Project::UseCases::'審核危險作業程序' to Project::Stakeholders::'指導員2-管制官暨安全官';
    #trace dependency from Project::UseCases::'執行分系統地面測試' to Project::Stakeholders::'核心成員';
    #trace dependency from Project::UseCases::'執行分系統地面測試' to Project::Stakeholders::'組長暨責任工程師';
    #trace dependency from Project::UseCases::'執行全箭整合測試' to Project::Stakeholders::'組長暨責任工程師';
    #trace dependency from Project::UseCases::'執行全箭整合測試' to Project::Stakeholders::'核心成員';
    #trace dependency from Project::UseCases::'執行全箭整合測試' to Project::Stakeholders::'總工程師暨隊長';
    #trace dependency from Project::UseCases::'執行飛行準備審查與核可' to Project::Stakeholders::'指導員2-管制官暨安全官';
    #trace dependency from Project::UseCases::'執行飛行準備審查與核可' to Project::Stakeholders::'發射許可審查委員';
    #trace dependency from Project::UseCases::'執行發射許可審查' to Project::Stakeholders::'審查與評分'::'發射許可審查委員';
    #trace dependency from Project::UseCases::'安裝公版發動機' to Project::Stakeholders::'推進系統工作人員';
    #trace dependency from Project::UseCases::'上架並啟動回收系統' to Project::Stakeholders::'發射指揮官與射場管理人員';
    #trace dependency from Project::UseCases::'上架並啟動回收系統' to Project::Stakeholders::'JRI 團隊'::'核心成員';
    #trace dependency from Project::UseCases::'終止發射並解除啟動' to Project::Stakeholders::'發射指揮官與射場管理人員';
    #trace dependency from Project::UseCases::'執行倒數與發射' to Project::Stakeholders::'發射指揮官與射場管理人員';
    #trace dependency from Project::UseCases::'計時並直播發射過程' to Project::Stakeholders::'官方計時員與直播團隊';
    #trace dependency from Project::UseCases::'空拍飛行與回收過程' to Project::Stakeholders::'回收漁船船員';
    #trace dependency from Project::UseCases::'空拍飛行與回收過程' to Project::Stakeholders::'無人機操作員';
    #trace dependency from Project::UseCases::'取回火箭並提交飛行數據' to Project::Stakeholders::'酬載提案委員會';
    #trace dependency from Project::UseCases::'取回火箭並提交飛行數據' to Project::Stakeholders::'總工程師暨隊長';
    package '供應與贊助廠商' { }
    package '供應商與贊助' { }
    #trace dependency from Project::UseCases::'飛行與回收'::'海上回收火箭' to Project::Stakeholders::'回收作業'::'回收漁船船員';
    #trace dependency from Project::UseCases::'飛行與回收'::'追蹤火箭位置與落點' to Project::Stakeholders::'回收作業'::'無人機操作員';
    package '製造與測試' { }
    #trace dependency from Project::UseCases::'提交酬載實驗提案' to Project::Stakeholders::'JRI 團隊'::'酬載提案委員會';
    #trace dependency from Project::UseCases::'設計與審查'::'定義酬載需求與數據需求' to Project::Stakeholders::'JRI 團隊'::'組長暨責任工程師';
    #trace dependency from Project::UseCases::'設計與審查'::'定義酬載需求與數據需求' to Project::Stakeholders::'總工程師暨隊長';
    #trace dependency from Project::UseCases::'發射場作業'::'協調無線電頻道分配' to Project::Stakeholders::'承辦單位';
    #trace dependency from Project::UseCases::'發射場作業'::'協調無線電頻道分配' to Project::Stakeholders::'其他參賽者'::'其他發射隊伍';
    #trace dependency from Project::UseCases::'發射場作業'::'協調無線電頻道分配' to Project::Stakeholders::'JRI 團隊'::'核心成員';
    #trace dependency from Project::UseCases::'發射場作業'::'協調無線電頻道分配' to Project::Stakeholders::'JRI 團隊'::'組長暨責任工程師';
    #trace dependency from Project::UseCases::'發射場作業'::'共用射場設施與作業區' to Project::Stakeholders::'其他參賽者'::'其他發射隊伍';
    #trace dependency from Project::UseCases::'發射場作業'::'共用射場設施與作業區' to Project::Stakeholders::'射場作業'::'發射指揮官與射場管理人員';
    #trace dependency from Project::UseCases::'發射場作業'::'共用射場設施與作業區' to Project::Stakeholders::'總工程師暨隊長';
    #trace dependency from Project::UseCases::'計劃管理'::'取得業餘無線電人員執照' to Project::Stakeholders::'法規'::'國家通訊傳播委員會';
    #trace dependency from Project::UseCases::'計劃管理'::'取得業餘無線電人員執照' to Project::Stakeholders::'JRI 團隊'::'組長暨責任工程師';
    #trace dependency from Project::UseCases::'計劃管理'::'取得業餘無線電人員執照' to Project::Stakeholders::'JRI 團隊'::'核心成員';
    #trace dependency from Project::UseCases::'確認射頻器材合法性' to Project::Stakeholders::'法規'::'國家通訊傳播委員會';
    #trace dependency from Project::UseCases::'設計與審查'::'確認射頻器材合法性' to Project::Stakeholders::'JRI 團隊'::'核心成員';
    #trace dependency from Project::UseCases::'設計與審查'::'確認射頻器材合法性' to Project::Stakeholders::'JRI 團隊'::'組長暨責任工程師';
    #trace dependency from Project::UseCases::'設計與審查'::'設定發射頻率與功率' to Project::Stakeholders::'JRI 團隊'::'組長暨責任工程師';
    #trace dependency from Project::UseCases::'設計與審查'::'設定發射頻率與功率' to Project::Stakeholders::'法規'::'國家通訊傳播委員會';
    package '2027探空火箭計劃' { }
    #trace dependency from Project::UseCases::'設計與審查'::'提出採購規格' to Project::Stakeholders::'供應'::'零件與材料供應商';
    #trace dependency from Project::UseCases::'設計與審查'::'提出採購規格' to Project::Stakeholders::'JRI 團隊'::'核心成員';
    #trace dependency from Project::UseCases::'設計與審查'::'詢價與確認交期與數量' to Project::Stakeholders::'供應'::'零件與材料供應商';
    #trace dependency from Project::UseCases::'設計與審查'::'詢價與確認交期與數量' to Project::Stakeholders::'JRI 團隊'::'核心成員';
    #trace dependency from Project::UseCases::'飛行與回收'::'取回火箭並提交飛行數據' to Project::Stakeholders::'JRI 團隊'::'核心成員';
    #trace dependency from Project::UseCases::'任務後'::'評定競賽成績' to Project::Stakeholders::'審查與評分'::'評審團';
    #trace dependency from Project::UseCases::'任務後'::'分析酬載實驗數據' to Project::Stakeholders::'JRI 團隊'::'組長暨責任工程師';
    #trace dependency from Project::UseCases::'任務後'::'分析酬載實驗數據' to Project::Stakeholders::'JRI 團隊'::'核心成員';
    #trace dependency from Project::UseCases::'任務後'::'提交飛行後報告' to Project::Stakeholders::'總工程師暨隊長';
    #trace dependency from Project::Stakeholders::'火箭發射與回收過程皆在可控安全的狀態' to Project::Stakeholders::'主辦與規範'::'國家太空中心';
    #trace dependency from Project::Stakeholders::'火箭發射與回收過程皆在可控安全的狀態' to Project::Stakeholders::'承辦單位';
    #trace dependency from Project::Stakeholders::'在指定時間內，完成各階段審查任務' to Project::Stakeholders::'總工程師暨隊長';
    #trace dependency from Project::Stakeholders::'在指定時間內，完成各階段審查任務' to Project::Stakeholders::'JRI 團隊'::'指導員2-管制官暨安全官';
    #trace dependency from Project::Stakeholders::'在指定時間內，完成各階段審查任務' to Project::Stakeholders::'JRI 團隊'::'指導員1-教職員顧問';
    #trace dependency from Project::Stakeholders::'在指定時間內，完成各階段審查任務' to Project::Stakeholders::'審查與評分'::'評審團';
    #trace dependency from Project::Stakeholders::'需要在有限的資源下，完成任務' to Project::Stakeholders::'總工程師暨隊長';
    #trace dependency from Project::Stakeholders::'需提供一載具平台進行液體動力行為實驗' to Project::Stakeholders::'JRI 團隊'::'酬載提案委員會';
    #trace dependency from Project::Stakeholders::'取得火箭升空影像' to Project::Stakeholders::'JRI 團隊'::'業務發展組';
    #trace dependency from Project::Stakeholders::'任務完全成功' to Project::Stakeholders::'總工程師暨隊長';
    #trace dependency from Project::Stakeholders::'安全許可審查' to Project::Stakeholders::'JRI 團隊'::'指導員2-管制官暨安全官';
    #trace dependency from Project::Stakeholders::'安全許可審查' to Project::Stakeholders::'JRI 團隊'::'指導員1-教職員顧問';
}
