/* 專案模型。從利害關係人開始，依序往下建立。 */
package Project {
    private import ScalarValues::*;
    private import ISQ::*;
    private import SI::*;
    private import JRI::*;

    package Stakeholders {
        public import 'JRI 團隊'::*;
        package 'JRI 團隊' {
            part <'STK-003'> '副社長暨營運長' : Stakeholder {
                doc /* 次團隊內部第二高職級，對應主辦單位簡章規定每隊必設之副隊長，並為指定聯繫窗口之一。 */
                :>> role = "副社長暨營運長負責團隊之營運與資源調度，關注時程規劃與甘特圖之維護、各階段報告之如期繳交，以及人力於十五人上限內之合理配置。經費方面，其關注預算執行、零件表與關鍵採購項目之交期，以及贊助與合約義務之履行。文件方面，其關注文件之歸檔、版本管理與存取權限，使實際飛行構型得以追溯至核准版本。行政方面，其與隊長同為主辦單位聯繫窗口，關注報名資格文件、成員異動通報、報名費繳交及發射執照測驗之安排。決賽期間，其關注運輸、住宿、進場人員名單與現場補給等後勤事項，並於隊長無法執行職務時代行對外聯繫。整體而言，其以團隊於既定時程與資源內完成各階段交付為主要關注，對技術基準不具決定權。";
            }
            part <'STK-004'> '指導員2-管制官' : Stakeholder {
                doc /* 管制官為逆熵航太指派之顧問（職級 R-VIII），一團隊至多一位，對應主辦單位簡章之指導員。其負責監督團隊遵循工程指導原則，提供學術與技術指導，並得於發現安全隱患時勒令全體或部分停工。品質保證方面，其核可全系統整合及測試備便審查、飛行備便審查以外之各項審查，並於測試備便審查後公布結果、將測試申請送交教職員顧問。出處：AEAS 工程指導原則 4.1；AEAS 安全協議 4.2。 */
                :>> role = "管制官負責監督團隊遵循工程指導原則，關注各階段設計審查之如實執行、審查結果之登錄，以及前次審查問題之結案。安全方面，其關注地面測試與射場作業之標準作業程序、安全協議與緊急應變程序是否完備，儲能裝置與推進系統於各作業階段是否處於已知之安全狀態，以及人員防護裝備與安全距離之落實；發現安全隱患時，其得逕行勒令停工。技術方面，其為全系統整合之核可者，關注次系統整合後之整體功能、重量與重心、穩定度及安全係數是否符合設計基準。異常處理方面，其關注所有故障均經記錄、調查並完成矯正措施。對外，其為主辦單位認定之指導員，關注危險性測試之現場監督責任，以及團隊於決賽通過發射許可審查之能力。整體而言，其以人員安全與程序合規為首要關注，位階高於時程與競賽成績。";
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
                doc /* 業務發展組屬於JRI 內部營運部門，其負責對外業務接洽。出處：JRI Project 2026 贊助簡報第 8 頁。 */
                :>> role = "箭載影像取得、團隊形象、對外招募";
            }
            part <'STK-018'> '酬載提案委員會' : Stakeholder {
                doc /* 酬載提案委員會（Payload Proposal Committee, PPC）是本計劃酬載任務提出者。它代表液體動力實驗的使用者，負責定義「要量測什麼、量到什麼程度才算成功」，並在任務結束後使用取得的數據。出處：總工程師確認（2026-11-15）。 */
                :>> role = "影像紀錄、酬載實驗數據";
            }
            part <'STK-002'> '總工程師暨隊長' : Stakeholder {
                doc /* 正式職稱為「社長暨總工程師」，是次團隊內部的最高職級，對應 TASA 簡章的隊長。在他之上還有兩位顧問（教職員顧問、管制官）。 */
                :>> role = "總工程師暨隊長負責確保全隊依工程指導原則之開發週期與審查程序執行，並對次系統整合及加工零件之最終簽核負責，故關注各次系統之介面相容性、重量與重心分配，以及零件是否符合設計公差。全系統整合、推力測試與飛行測試之備便審查須送請管制官或教職員顧問核可，其關注送審證據之完整性、測試紀錄之可追溯性，以及前次審查問題之結案狀況。時程方面，其關注各階段報告之準時繳交、關鍵測試於第二次設計審查前完成，以及緊急優先度之適當運用。對外，其為主辦單位之指定聯繫窗口，關注成員異動通報、報到文件與發射執照等資格事項之完備。整體而言，其以火箭順利升空並完成回收為最終關注，蓋決賽飛行占總成績百分之四十五，未發射者該項以零分計。";
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
            part <'STK-026'> '評審總召集人' : Stakeholder {
                doc /* 由各協辦大學或主辦單位推舉的專家學者兼任，統籌規劃與監督競賽評選；遇競賽爭議項目時召集評審會議做最終裁決，並於決賽閉幕時總講評。出處：競賽規則說明 v3 第 27 頁。 */
                :>> role = "評選公平公正公開、爭議裁決有據、目標不被任意降低";
            }
            part <'STK-027'> '發射許可審查召集人' : Stakeholder {
                doc /* 針對各檢查站確認各隊伍審查狀況與結果，並有最終許可與否之決定權。出處：競賽規則說明 v3 第 32 頁。 */
                :>> role = "各站審查結果明確、火箭符合設計安全規範、審查如期完成";
            }
        }
        public import '射場作業'::*;
        package '射場作業' {
            part <'STK-012'> '推進系統工作人員' : Stakeholder {
                doc /* 負責安裝點火器、連接點火線路 */
                :>> role = "發動機可快速安裝、接線時火箭處於安全狀態";
            }
            part <'STK-013'> '發射指揮官' : Stakeholder {
                doc /* 宣達倒數並下達發射。發射控制室另有發射控制官。射場管理另列為「射場管理組」。出處：競賽規則說明 v3 第 54、56 頁。 */
                :>> role = "發射條件全數滿足、風速於限制內、時程不延誤";
            }
            part <'STK-014'> '直播與攝影團隊' : Stakeholder {
                doc /* 負責發射過程的直播與攝影記錄。出處：競賽規則說明 v3 第 4、48、54 頁。 */
                :>> role = "起飛與落海清晰可辨、隊伍可識別";
            }
            part <'STK-028'> '安全指揮官' : Stakeholder {
                doc /* 發射控制室基本人員；火箭升空異常時確認是否有人員受傷。出處：競賽規則說明 v3 第 56、58 頁。 */
                :>> role = "異常時能立即掌握人員狀況";
            }
            part <'STK-029'> '射場環境組' : Stakeholder {
                doc /* 於發射前確認風速、地震、巨浪、雷擊、降雨、濃霧及安全措施等發射條件。出處：競賽規則說明 v3 第 54、55 頁。 */
                :>> role = "發射條件全數符合、現場具備消防與送醫能力";
            }
            part <'STK-030'> '射場管理組' : Stakeholder {
                doc /* 由國家太空中心擔任，於發射前確認場域淨空、發射通知與交通管制。自 STK-013 拆出。出處：競賽規則說明 v3 第 55 頁。 */
                :>> role = "場域淨空、相關單位已通知、交通管制完成";
            }
            part <'STK-031'> '醫護及消防人員' : Stakeholder {
                doc /* 駐點於組裝整備區北側辦公室；火箭升空異常且非單一滅火器可處理時，由現場消防隊攜帶滅火設備前往處理。出處：競賽規則說明 v3 第 51、58 頁。 */
                :>> role = "異常不擴大成災害、異常在可處置範圍內";
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
            part <'STK-022'> '國家科學及技術委員會' : Stakeholder {
                doc /* 太空發展法之主管機關、本競賽之指導單位，亦為短期科研探空火箭發射場域之管理單位，掌理發射載具之登錄與發射許可。出處：太空發展法第 2、5 條；競賽規則說明 v3 第 1 頁；國科會短期科研探空火箭發射場域管理及申請使用要點第 3 點。 */
                :>> role = "發射不危及公共安全、事故可通報與調查、活動符合環境保護法規";
            }
            part <'STK-023'> '海洋委員會與海巡' : Stakeholder {
                doc /* 海洋污染防治法之中央主管機關為海洋委員會，執行機關為海岸巡防機關；發射時並協助落點海域船隻淨空。出處：海洋污染防治法第 3 條；國科會短期科研探空火箭發射場域管理及申請使用要點第 10 點第 3 款。 */
                :>> role = "火箭不遺留於海中、有害物質不入海";
            }
            part <'STK-024'> '環境部' : Stakeholder {
                doc /* 廢棄物清理法之中央主管機關。學校或機關團體之實驗室屬該法所稱事業，其產出為事業廢棄物。出處：廢棄物清理法第 2、4 條。 */
                :>> role = "事業廢棄物依規定貯存、清除、處理";
            }
            part <'STK-025'> '勞動部' : Stakeholder {
                doc /* 職業安全衛生法之中央主管機關。受工作場所負責人指揮或監督從事勞動之人員，於事業單位工作場所比照勞工適用該法。出處：職業安全衛生法第 2、51 條；國科會短期科研探空火箭發射場域管理及申請使用要點第 10 點第 8 款。 */
                :>> role = "危害性化學品有標示與通識、作業危害有防護";
            }
        }
        public import '供應'::*;
        package '供應' {
            part <'STK-021'> '零件與材料供應商' : Stakeholder {
                doc /* 提供商規零件、材料 */
                :>> role = "規格明確、交期與數量可行";
            }
        }
        public import 'AEAS'::*;
        package 'AEAS' {
            part <'STK-032'> 'AEAS 工程委員會' : Stakeholder {
                doc /* 逆熵航太的工程系統專責單位，制定與修改工程指導原則、安全協議及其他工程相關規範，並對其保留最終解釋權。出處：AEAS 工程指導原則 4.3；AEAS 安全協議 1.3、2.2。 */
                :>> role = "依指導原則執行開發與審查、遵守安全協議、文件依規範管理";
            }
        }
        public import '贊助'::*;
        package '贊助' {
            part <'STK-033'> '贊助者' : Stakeholder {
                doc /* 以資金、原物料或場地資源支持專案的單位，依贊助級距取得社群、活動與箭體塗裝的品牌曝光。依據為 2026 年度贊助簡報，2027 年度方案待確認。出處：JRI Project 2026 贊助簡報第 12 至 19 頁；競賽規則說明 v3 第 3 頁；AEAS 工程指導原則 4.5。 */
                :>> role = "商標在箭體與影像中可見、贊助資源用於製造與測試";
            }
        }
        requirement <'EXP-001'> '任務達成完全成功' : Expectation {
            doc /* 總工程師對任務成敗負最終責任。完全成功的定義見任務成功準則：通過審查、安全飛行，並取回飛行數據、酬載數據和箭載影像。 */
        }
        requirement <'EXP-002'> '團隊在有限資源下可持續運作' : Expectation {
            doc /* 營運長負責團隊財務。超支會影響社團營運和之後年度的經費申請。 */
        }
        requirement <'EXP-003'> '無人員受傷' : Expectation {
            doc /* 儲能裝置、發動機、複材製程都有受傷風險。管制官要確認每項危險作業開始前，程序都經過審核。 */
        }
        requirement <'EXP-004'> '計劃在合規且可監督的狀態下進行' : Expectation {
            doc /* 指導老師與安全官需要在審查節點了解計劃狀態，才能判斷是否要介入或提供協助。 */
        }
        requirement <'EXP-005'> '分系統如期交付且確認可用' : Expectation {
            doc /* 責任工程師依據上層分配的需求進行設計。需求模糊或介面不清，會導致設計反覆修改，或整合時才發現對不上。 */
        }
        requirement <'EXP-006'> '累積實作經驗與技術能力' : Expectation {
            doc /* 成員投入大量時間參與計劃，希望從中獲得專業成長，也有助於升學。 */
        }
        requirement <'EXP-007'> '取得可用於宣傳的影像素材' : Expectation {
            doc /* 包含箭載、地面和空拍影像。飛行畫面是最能呈現團隊工程成果的素材。 */
        }
        requirement <'EXP-008'> '將酬載實驗裝置放進探空火箭' : Expectation {
            doc /* 地面試驗難以重現飛行中連續變化的加速度。實際飛行的數據可以補足這個缺口。數據要有足夠的取樣率、精度，並和飛行數據時間同步。 */
        }
        requirement <'EXP-009'> '發射與回收全程安全' : Expectation {
            doc /* 主辦單位對射場人員和環境的安全負責。 */
        }
        requirement <'EXP-010'> '賽事流程順利進行' : Expectation {
            doc /* 承辦單位負責賽事的實際執行，任何隊伍延誤都會影響整體流程。 */
        }
        requirement <'EXP-011'> '評分依據客觀、可驗證' : Expectation {
            doc /* 以實際飛行數據和明確的判準評分。 */
        }
        requirement <'EXP-012'> '上架前確認可安全發射' : Expectation {
            doc /* 發射許可為最後一道安全關卡。審查委員要對放行的決定負責。 */
        }
        requirement <'EXP-013'> '發動機在安全程序下操作' : Expectation {
            doc /* 發動機是火箭上能量最高的部件，操作失誤可能造成嚴重傷害。 */
        }
        requirement <'EXP-014'> '射場作業安全且有序' : Expectation {
            doc /* 發射指揮官要在發現異常時，能立即讓火箭回到安全狀態。 */
        }
        requirement <'EXP-015'> '完整記錄並呈現發射過程' : Expectation {
            doc /* 直播需要觀眾能辨識是哪一隊在發射，這也是規範要求隊伍標示原因之一 */
        }
        requirement <'EXP-016'> '安全且有效率地完成回收' : Expectation {
            doc /* 船員不是火箭專業人員，打撈時需要確認不會接觸到未釋放的儲能裝置。 */
        }
        requirement <'EXP-017'> '空拍不和火箭軌跡衝突' : Expectation {
            doc /* 無人機進入火箭的飛行路徑或傘降範圍，會造成碰撞風險。 */
        }
        requirement <'EXP-018'> '自身作業不受其他隊伍影響' : Expectation {
            doc /* 各隊都依賴無線電傳回遙測數據。頻道衝突可能導致其他隊伍遺失數據，甚至影響回收系統。 */
        }
        requirement <'EXP-019'> '頻段與功率合法' : Expectation {
            doc /* 應使用業餘無線電執照中核可無線電頻段段與功率。未經核准的頻段或超出功率限制，可能干擾其他合法的無線電使用者。 */
        }
        requirement <'EXP-020'> '收到可履行的訂單' : Expectation {
            doc /* 規格不清楚會導致報價錯誤或出貨不符，造成雙方的退換成本。 */
        }
        requirement <'EXP-021'> '發射不危及公共安全' : Expectation {
            doc /* 發射計畫應有確保飛行路徑與發射設施周邊安全的方法，包含緊急應變與發射終止措施。出處：太空發展法第 11 條第 2 項；發射載具發射許可及太空事故處理辦法第 5、8 條。 */
        }
        requirement <'EXP-022'> '事故可即時通報與調查' : Expectation {
            doc /* 發生事故或偏離飛行路徑時，能即時提供追蹤資料，並保全資料供調查。出處：發射載具發射許可及太空事故處理辦法第 18 條；太空發展法第 18 條。 */
        }
        requirement <'EXP-023'> '活動符合環境保護法規' : Expectation {
            doc /* 從事太空活動應依國內環境保護法規辦理，減少對環境之不利影響。出處：太空發展法第 7 條。 */
        }
        requirement <'EXP-024'> '火箭不成為海洋廢棄物' : Expectation {
            doc /* 火箭與所有部件落海後都被回收，不遺留人造持久性固體於海中。出處：海洋污染防治法第 4 條第 11 款。 */
        }
        requirement <'EXP-025'> '有害物質不排洩入海' : Expectation {
            doc /* 電池、實驗液體、配重等不將有害物質帶入海洋。出處：海洋污染防治法第 4 條第 1 款、第 21 條。 */
        }
        requirement <'EXP-026'> '事業廢棄物依規定清運' : Expectation {
            doc /* 實驗室產出的廢樹脂、廢溶劑、廢電池等交由合法機構清運，不任意棄置。出處：廢棄物清理法第 2、28、30、36 條。 */
        }
        requirement <'EXP-027'> '危害性化學品有標示與通識' : Expectation {
            doc /* 危害性化學品之容器標示、清單與安全資料表齊備，作業人員受過訓練。出處：職業安全衛生法第 10、32 條；危害性化學品標示及通識規則第 5、12、17 條。 */
        }
        requirement <'EXP-028'> '作業危害有防護且可停工' : Expectation {
            doc /* 對爆炸性物質、高壓氣體、化學品、粉塵等危害有防護措施；有立即發生危險之虞時停止作業。出處：職業安全衛生法第 6、18 條。 */
        }
        requirement <'EXP-029'> '評選公平公正公開' : Expectation {
            doc /* 評選秉持公平、公正、公開原則，並落實利益迴避。出處：競賽規則說明 v3 第 27 頁。 */
        }
        requirement <'EXP-030'> '競賽爭議可依紀錄裁決' : Expectation {
            doc /* 競賽爭議項目能在評審會議上依明確紀錄做最終裁決。出處：競賽規則說明 v3 第 27 頁。 */
        }
        requirement <'EXP-031'> '目標變更有一致的確認程序' : Expectation {
            doc /* 任務目標或酬載成功條件的變更須說明原因、影響與驗證結果，並有一致的確認程序，不任意降低目標。出處：競賽規則說明 v3 第 14 頁。 */
        }
        requirement <'EXP-032'> '各檢查站結果足以做最終判定' : Expectation {
            doc /* 各檢查站的審查狀況與結果明確，足以做出最終許可與否的決定。出處：競賽規則說明 v3 第 32 頁。 */
        }
        requirement <'EXP-033'> '火箭符合設計安全規範' : Expectation {
            doc /* 火箭符合設計安全規範，發射前問題已釐清，避免發射意外。出處：競賽規則說明 v3 第 11 頁。 */
        }
        requirement <'EXP-034'> '審查在規定時間內完成' : Expectation {
            doc /* 隊伍在審查時間（含展延）內完成發射許可審查與上架備便審查。出處：競賽規則說明 v3 第 6 頁。 */
        }
        requirement <'EXP-035'> '異常時可立即確認人員狀況' : Expectation {
            doc /* 火箭升空異常時，能立即確認是否有人員受傷。出處：競賽規則說明 v3 第 58 頁。 */
        }
        requirement <'EXP-036'> '發射條件符合才發射' : Expectation {
            doc /* 風速、地震、巨浪、雷擊、降雨、能見度都在限制內才進行發射。出處：競賽規則說明 v3 第 55 頁。 */
        }
        requirement <'EXP-037'> '現場具備消防與送醫能力' : Expectation {
            doc /* 無適當消防設備或無可載送傷者的運輸器具時不發射。出處：競賽規則說明 v3 第 55 頁。 */
        }
        requirement <'EXP-038'> '火箭能在限制風速內安全離架' : Expectation {
            doc /* 預備發射時場地風速應小於火箭離架速度的四分之一。出處：火箭設計規範 V2 8.2.3。 */
        }
        requirement <'EXP-039'> '發射前場域淨空' : Expectation {
            doc /* 發射前確認射場無人員。出處：競賽規則說明 v3 第 55 頁。 */
        }
        requirement <'EXP-040'> '相關單位已通知且回收船已待命' : Expectation {
            doc /* 發射前已通知相關單位，回收船已在待命區。出處：競賽規則說明 v3 第 55 頁。 */
        }
        requirement <'EXP-041'> '交通管制已完成' : Expectation {
            doc /* 發射時無車輛進入管制區。出處：競賽規則說明 v3 第 48、55 頁。 */
        }
        requirement <'EXP-042'> '異常不擴大成災害' : Expectation {
            doc /* 火箭異常時不落於建物、交通工具、樹林、人口稠密區等高風險區域。出處：競賽規則說明 v3 第 58 頁。 */
        }
        requirement <'EXP-043'> '異常狀態在可處置範圍內' : Expectation {
            doc /* 異常狀態可由滅火器或現場消防隊處理。出處：競賽規則說明 v3 第 58 頁。 */
        }
        requirement <'EXP-044'> '剩餘火箭可安全移除點火器' : Expectation {
            doc /* 比賽暫停時，工作人員能前往剩餘未發射的火箭移除點火器。出處：競賽規則說明 v3 第 58 頁。 */
        }
        requirement <'EXP-045'> '依指導原則的週期與審查執行' : Expectation {
            doc /* 工程開發依開發週期模式進行，各項審查由指定職權核可。出處：AEAS 工程指導原則 1.2、5.3、6.2。 */
        }
        requirement <'EXP-046'> '遵守安全協議與危害分級' : Expectation {
            doc /* 所有工程計畫依 H1 至 H3 危害分級管制危害物質與作業。出處：AEAS 安全協議 1.2、7.5。 */
        }
        requirement <'EXP-047'> '文件依規範撰寫歸檔與版本控制' : Expectation {
            doc /* 文件依文件規範撰寫與歸檔，變更有紀錄可追溯。出處：AEAS 工程指導原則第 5 章、6.2.5。 */
        }
        requirement <'EXP-048'> '商標印在箭體上且在影像中可見' : Expectation {
            doc /* 箭身印製品牌商標，發射活動的拍攝紀錄產出品牌可見的影片與素材。依據為 2026 年度贊助簡報，2027 年度方案待確認。出處：JRI Project 2026 贊助簡報第 17 頁。 */
        }
        requirement <'EXP-049'> '贊助資源用於火箭製造與測試' : Expectation {
            doc /* 提供的資金、物料或場地實際用於火箭製造與測試。依據為 2026 年度贊助簡報，2027 年度方案待確認。出處：JRI Project 2026 贊助簡報第 19 頁。 */
        }
    }

    package Structure {
        part def <'SYS-001'> '系統：RTC 2027 探空火箭系統' :> System {
            doc /* 本專案設計與製造的系統，包含火箭本體與團隊自製的地面支援設備。公版發動機、公版 GPS 追蹤器與公版軌道滑塊由主辦單位提供，不在系統內，團隊負責與其相接的介面。 */
        }
        part def <'EXT-001'> '公版發動機 Pioneer-10k' :> ExternalEntity {
            part '系統：RTC 2027 探空火箭系統' : Project::Structure::'系統：RTC 2027 探空火箭系統';
        }
        part def <'SUB-001'> '結構次系統' :> Subsystem {
            part '系統：RTC 2027 探空火箭系統' : Project::Structure::'系統：RTC 2027 探空火箭系統';
        }
        part def <'SUB-002'> '航電次系統' :> Subsystem {
            part '系統：RTC 2027 探空火箭系統' : Project::Structure::'系統：RTC 2027 探空火箭系統';
        }
        part def <'SUB-003'> '回收次系統' :> Subsystem {
            part '系統：RTC 2027 探空火箭系統' : Project::Structure::'系統：RTC 2027 探空火箭系統';
        }
        part def <'SUB-004'> '地面次系統' :> Subsystem {
            part '系統：RTC 2027 探空火箭系統' : Project::Structure::'系統：RTC 2027 探空火箭系統';
        }
        part def <'SUB-005'> '酬載次系統' :> Subsystem {
            part '系統：RTC 2027 探空火箭系統' : Project::Structure::'系統：RTC 2027 探空火箭系統';
        }
        part def <'EXT-002'> '公版GPS追蹤器' :> ExternalEntity;
        part def <'EXT-003'> '公版軌道滑塊' :> ExternalEntity;
        part def <'EXT-004'> '發射架' :> ExternalEntity;
        part def <'EXT-005'> '大氣風場環境' :> ExternalEntity;
        part def <'EXT-006'> '射場人員' :> ExternalEntity;
        part def <'EXT-007'> '無線電頻道' :> ExternalEntity;
        part def <'EXT-008'> '團隊操作人員' :> ExternalEntity;
        part def <'EXT-009'> '地面站' :> ExternalEntity;
        part def <'EXT-010'> '發射指揮官' :> ExternalEntity;
        part def <'EXT-011'> '回收人員' :> ExternalEntity;
        part def <'EXT-012'> '發射許可審查委員' :> ExternalEntity;
    }

    package NGOs {
        requirement <'GOAL-001'> '以探空火箭飛行實驗取得燃盡前後的液體前衝數據' : Goal {
            doc /* 小型探空火箭在固體馬達燃盡時，會經歷殘餘推力衰減與氣動阻力減速，力學過程與液體火箭在大氣中關閉引擎相同。本計劃以一次探空火箭飛行作為實驗載台，讓酬載內的實驗容器經歷真實的推力尾段與減速環境，同步記錄液體運動影像與慣性量測數據，並在回收火箭後取得完整資料。 */
        }
        requirement <'OBJ-001'> '於 2027 台灣盃決賽日，在旭海發射場以 84° ±1° 向正東發射' : Objective {
            doc /* 於決賽日完成發射 */
        }
        requirement <'OBJ-002'> '火箭安全離架，並依序開啟減速傘與主傘' : Objective {
            doc /* 頂點開減速傘、離地 150～450 m 開主傘 */
        }
        requirement <'OBJ-003'> '火箭濺落後漂浮於海面並被回收' : Objective {
            doc /* 觸水速度 < 12 m/s，火箭浮力大於火箭重量 */
        }
        requirement <'OBJ-004'> '取回飛行全程的高度、速度、加速度與 GPS 軌跡' : Objective;
        requirement <'OBJ-005'> '取回燃盡前後的液體前衝與撞擊後影像' : Objective {
            doc /* 影像影格率應達 170 fps 以上（目標值 240 fps） */
        }
        requirement <'OBJ-006'> '取回與影像時間同步的軸向加速度紀錄' : Objective {
            doc /* 200 Hz、±16 g、與影像共用時間基準 */
        }
        requirement <'OBJ-007'> '取回三軸角速度與橫向加速度紀錄' : Objective;
        requirement <'OBJ-008'> '取回發射至濺落的箭載影像' : Objective;
        requirement <'NEED-002'> '取得引擎在大氣中關閉時液體前衝的飛行量測數據' : Need {
            doc /* JRI 推展液態推進技術，需要了解引擎在大氣中關閉後，貯箱內液體受反向相對加速度而前衝並撞擊端蓋的過程。地面與落塔試驗無法重現大氣中關機後連續變化的軸向加速度歷程，因此團隊應取得真實飛行環境下的液體前衝與撞擊後動態數據，且數據應具備足夠的取樣率與精度，並與飛行數據時間同步。此為本專案最主要的存在理由，在安全與合規的前提下優先滿足。 */
        }
        requirement <'NEED-003'> '累積團隊的火箭系統實作經驗與技術能力' : Need {
            doc /* JRI 成員投入大量時間參與計劃，團隊需要透過完整的設計、製造、測試與飛行過程，讓成員累積系統工程與工程實作能力，作為液態推進技術發展的人才基礎。優先序次於液體前衝數據。 */
        }
        requirement <'NEED-004'> '取得呈現團隊工程成果的影像素材' : Need {
            doc /* 團隊需要能呈現工程成果的影像素材，包含箭載、地面與空拍影像，以支援招募與合作洽談。優先序次於液體前衝數據與團隊實作能力。 */
        }
        requirement <'GOAL-002'> '讓成員完整經歷分系統的全生命週期' : Goal {
            doc /* 專案應讓成員實際參與所屬分系統從需求定義、設計、製造、測試到飛行的完整過程，在真實的工程專案中累積系統工程與工程實作能力。 */
        }
        requirement <'GOAL-003'> '記錄飛行全程的影像' : Goal {
            doc /* 專案應在飛行實驗中取得箭載、地面與空拍影像，記錄火箭從發射到回收的過程，作為呈現團隊工程成果的素材。 */
        }
        requirement <'OBJ-010'> '取得發射離架的地面影像' : Objective {
            doc /* 專案應取得從地面拍攝、涵蓋火箭發射離架過程的影像。 */
        }
        requirement <'MOE-001'> 'MOE-01 決賽日發射達成' : MOE {
            doc /* 火箭應於 2027 台灣盃決賽日完成發射。量測方式：以官方發射紀錄判定是／否。 */
        }
        requirement <'MOE-002'> 'MOE-02 減速傘開傘時刻與頂點時刻的時間差' : MOE {
            doc /* 減速傘開傘時刻與頂點時刻的時間差應在容許範圍內。門檻值待定，於 PDR 依航電頂點偵測方式決定。 */
        }
        requirement <'MOE-003'> 'MOE-03 主傘開傘高度' : MOE {
            doc /* 主傘應於離地 150～450 m 區間開啟。量測方式：以飛行數據的高度紀錄判定。 */
        }
        requirement <'MOE-004'> 'MOE-04 觸水速度' : MOE {
            doc /* 火箭觸水速度應小於 12 m/s。量測方式：以飛行數據判定。 */
        }
        requirement <'MOE-005'> 'MOE-05 浮力與重量比' : MOE {
            doc /* 火箭浮力與火箭重量的比值應大於 1。 */
        }
        requirement <'MOE-006'> 'MOE-06 飛行數據時間涵蓋範圍' : MOE {
            doc /* 高度、速度、加速度與 GPS 軌跡紀錄應涵蓋發射至濺落的全程。 */
        }
        requirement <'MOE-007'> 'MOE-07 前衝影像實際影格率' : MOE {
            doc /* 液體前衝影像的實際影格率應達 170 fps 以上，目標值為 240 fps。 */
        }
        requirement <'MOE-008'> 'MOE-08 前衝影像時間涵蓋範圍' : MOE {
            doc /* 液體前衝影像應涵蓋固體馬達燃盡至液體撞擊端蓋後的完整過程。量測方式：判定是／否。 */
        }
        requirement <'MOE-009'> 'MOE-09 軸向加速度實際取樣率' : MOE {
            doc /* 軸向加速度紀錄的實際取樣率應達 200 Hz 以上。 */
        }
        requirement <'MOE-010'> 'MOE-10 軸向加速度量程飽和' : MOE {
            doc /* 點火至頂點期間的軸向加速度紀錄不應超出 ±16 g 量程。量測方式：檢查紀錄中是否出現飽和值。 */
        }
        requirement <'MOE-011'> 'MOE-11 影像與加速度時間同步誤差' : MOE {
            doc /* 影像與加速度紀錄的時間同步誤差應不大於半個影格間隔（240 fps 時約 2.1 ms，170 fps 時約 2.9 ms）。依據：PPC 計劃書式 (4-75)、(4-86)。 */
        }
        requirement <'MOE-012'> 'MOE-12 三軸紀錄時間涵蓋範圍' : MOE {
            doc /* 三軸角速度與橫向加速度紀錄應涵蓋點火至頂點，目標值為點火至減速傘開傘。依據：PPC 計劃書表 4-6、式 (4-74)。 */
        }
        requirement <'MOE-013'> 'MOE-13 箭載影像時間涵蓋範圍' : MOE {
            doc /* 箭載影像應涵蓋發射至濺落的全程。 */
        }
        requirement <'MOE-014'> 'MOE-14 地面影像涵蓋發射離架' : MOE {
            doc /* 地面影像應涵蓋火箭發射離架的過程。量測方式：判定是／否。 */
        }
        requirement <'OBJ-012'> '每位核心成員皆完成所屬分系統的設計、製造與測試' : Objective {
            doc /* 每位核心成員應至少參與一個分系統的設計、製造與測試，並撰寫可查核的技術文件。 */
        }
        requirement <'MOE-015'> '完成技術文件的核心成員比例' : MOE {
            doc /* 已參與所屬分系統的設計、製造與測試並撰寫可查核技術文件的核心成員，占全體核心成員的比例應為 100%。量測方式：於 FRR 前查核每位核心成員的技術文件。 */
        }
        requirement <'NEED-005'> '專案全程不危及人員、公眾與場域' : Need {
            doc /* 專案從製造、測試到發射、回收的全程，不得危及人員、公眾與場域。優先序最高，高於液體前衝數據。 */
        }
        requirement <'NEED-006'> '專案符合規則、規範與法規且可被查證' : Need {
            doc /* 專案應符合競賽規則、火箭設計規範、相關法規與 AEAS 規範，且符合與否可以被查證。優先序次於安全，高於液體前衝數據。 */
        }
        requirement <'NEED-007'> '在賽程與可負擔的資源內完成專案' : Need {
            doc /* 專案應在競賽賽程與團隊可負擔的資源內，完成各階段交付與決賽發射。屬限制條件。 */
        }
        requirement <'GOAL-004'> '全程處於已知且受控的安全狀態' : Goal {
            doc /* 所有危險作業與飛行階段，火箭與人員都處於已知且受控的安全狀態。 */
        }
        requirement <'GOAL-005'> '通過所有審查並符合法規與規範' : Goal {
            doc /* 通過競賽各階段審查與發射許可審查，並符合適用的法規與 AEAS 規範。 */
        }
        requirement <'GOAL-006'> '依賽程完成交付且支出不超過預算' : Goal {
            doc /* 依競賽賽程完成各階段交付並於決賽日發射，支出不超過核定預算。 */
        }
        requirement <'OBJ-013'> '通過發射許可審查全部項目' : Objective {
            doc /* 發射許可審查共 25 項，應全數取得核可。出處：競賽規則說明 v3 第 31 頁。 */
        }
        requirement <'OBJ-014'> '危險作業都經管制官核可後執行' : Objective {
            doc /* 點火測試、推力測試、飛行測試與高壓鋼瓶等 H3 等級作業，應經管制官核可後於指定場所在監督下執行。出處：AEAS 安全協議 7.5.3。 */
        }
        requirement <'OBJ-015'> '各階段報告與決賽文件準時繳交' : Objective {
            doc /* MDR、PDR、CDR、FRR 四份報告與決賽報到紙本文件，應於收件截止前繳交。出處：競賽規則說明 v3 第 7、10、27 頁。 */
        }
        requirement <'OBJ-016'> '總支出不超過預算' : Objective {
            doc /* 專案總支出應不超過預算。 */
        }
        requirement <'MOE-016'> '發射許可審查核可項數' : MOE {
            doc /* 發射許可審查核可項數應為 25 項全數。量測方式：以發射許可審查表的簽核結果判定。 */
        }
        requirement <'MOE-017'> '危險作業事前核可比例' : MOE {
            doc /* H3 等級作業中，執行前已取得管制官核可的比例應為 100%。量測方式：查核測試申請與審查紀錄。 */
        }
        requirement <'MOE-018'> '報告與決賽文件準時繳交項數' : MOE {
            doc /* MDR、PDR、CDR、FRR 四份報告與決賽報到紙本文件共 5 項，準時繳交項數應為 5 項。量測方式：以主辦單位的收件紀錄判定。 */
        }
        requirement <'MOE-019'> '總支出金額' : MOE {
            doc /* 專案總支出應不大於新臺幣 150,000 元。量測方式：以成本紀錄判定。門檻值為 2027 年度預估募集金額（總工程師 2026-11-15 提供），募集結果確定後更新。 */
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
            use case <'UC-021'> '直播發射過程' : UseCase;
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
    #trace dependency from Project::UseCases::'內部審查' to Project::Stakeholders::'指導員2-管制官';
    #trace dependency from Project::UseCases::'提交設計審查文件' to Project::Stakeholders::'組長暨責任工程師';
    #trace dependency from Project::UseCases::'提交設計審查文件' to Project::Stakeholders::'總工程師暨隊長';
    #trace dependency from Project::UseCases::'執行官方設計審查' to Project::Stakeholders::'評審團';
    #trace dependency from Project::UseCases::'製造與組裝' to Project::Stakeholders::'核心成員';
    #trace dependency from Project::UseCases::'審核危險作業程序' to Project::Stakeholders::'指導員2-管制官';
    #trace dependency from Project::UseCases::'執行分系統地面測試' to Project::Stakeholders::'核心成員';
    #trace dependency from Project::UseCases::'執行分系統地面測試' to Project::Stakeholders::'組長暨責任工程師';
    #trace dependency from Project::UseCases::'執行全箭整合測試' to Project::Stakeholders::'組長暨責任工程師';
    #trace dependency from Project::UseCases::'執行全箭整合測試' to Project::Stakeholders::'核心成員';
    #trace dependency from Project::UseCases::'執行全箭整合測試' to Project::Stakeholders::'總工程師暨隊長';
    #trace dependency from Project::UseCases::'執行飛行準備審查與核可' to Project::Stakeholders::'指導員2-管制官';
    #trace dependency from Project::UseCases::'執行飛行準備審查與核可' to Project::Stakeholders::'發射許可審查委員';
    #trace dependency from Project::UseCases::'執行發射許可審查' to Project::Stakeholders::'審查與評分'::'發射許可審查委員';
    #trace dependency from Project::UseCases::'安裝公版發動機' to Project::Stakeholders::'推進系統工作人員';
    #trace dependency from Project::UseCases::'上架並啟動回收系統' to Project::Stakeholders::'發射指揮官';
    #trace dependency from Project::UseCases::'上架並啟動回收系統' to Project::Stakeholders::'JRI 團隊'::'核心成員';
    #trace dependency from Project::UseCases::'終止發射並解除啟動' to Project::Stakeholders::'發射指揮官';
    #trace dependency from Project::UseCases::'執行倒數與發射' to Project::Stakeholders::'發射指揮官';
    #trace dependency from Project::UseCases::'直播發射過程' to Project::Stakeholders::'直播與攝影團隊';
    #trace dependency from Project::UseCases::'空拍飛行與回收過程' to Project::Stakeholders::'回收漁船船員';
    #trace dependency from Project::UseCases::'空拍飛行與回收過程' to Project::Stakeholders::'無人機操作員';
    #trace dependency from Project::UseCases::'取回火箭並提交飛行數據' to Project::Stakeholders::'酬載提案委員會';
    #trace dependency from Project::UseCases::'取回火箭並提交飛行數據' to Project::Stakeholders::'總工程師暨隊長';
    #trace dependency from Project::UseCases::'飛行與回收'::'海上回收火箭' to Project::Stakeholders::'回收作業'::'回收漁船船員';
    #trace dependency from Project::UseCases::'飛行與回收'::'追蹤火箭位置與落點' to Project::Stakeholders::'回收作業'::'無人機操作員';
    #trace dependency from Project::UseCases::'提交酬載實驗提案' to Project::Stakeholders::'JRI 團隊'::'酬載提案委員會';
    #trace dependency from Project::UseCases::'設計與審查'::'定義酬載需求與數據需求' to Project::Stakeholders::'JRI 團隊'::'組長暨責任工程師';
    #trace dependency from Project::UseCases::'設計與審查'::'定義酬載需求與數據需求' to Project::Stakeholders::'總工程師暨隊長';
    #trace dependency from Project::UseCases::'發射場作業'::'協調無線電頻道分配' to Project::Stakeholders::'承辦單位';
    #trace dependency from Project::UseCases::'發射場作業'::'協調無線電頻道分配' to Project::Stakeholders::'其他參賽者'::'其他發射隊伍';
    #trace dependency from Project::UseCases::'發射場作業'::'協調無線電頻道分配' to Project::Stakeholders::'JRI 團隊'::'核心成員';
    #trace dependency from Project::UseCases::'發射場作業'::'協調無線電頻道分配' to Project::Stakeholders::'JRI 團隊'::'組長暨責任工程師';
    #trace dependency from Project::UseCases::'發射場作業'::'共用射場設施與作業區' to Project::Stakeholders::'其他參賽者'::'其他發射隊伍';
    #trace dependency from Project::UseCases::'發射場作業'::'共用射場設施與作業區' to Project::Stakeholders::'射場作業'::'發射指揮官';
    #trace dependency from Project::UseCases::'發射場作業'::'共用射場設施與作業區' to Project::Stakeholders::'總工程師暨隊長';
    #trace dependency from Project::UseCases::'計劃管理'::'取得業餘無線電人員執照' to Project::Stakeholders::'法規'::'國家通訊傳播委員會';
    #trace dependency from Project::UseCases::'計劃管理'::'取得業餘無線電人員執照' to Project::Stakeholders::'JRI 團隊'::'組長暨責任工程師';
    #trace dependency from Project::UseCases::'計劃管理'::'取得業餘無線電人員執照' to Project::Stakeholders::'JRI 團隊'::'核心成員';
    #trace dependency from Project::UseCases::'確認射頻器材合法性' to Project::Stakeholders::'法規'::'國家通訊傳播委員會';
    #trace dependency from Project::UseCases::'設計與審查'::'確認射頻器材合法性' to Project::Stakeholders::'JRI 團隊'::'核心成員';
    #trace dependency from Project::UseCases::'設計與審查'::'確認射頻器材合法性' to Project::Stakeholders::'JRI 團隊'::'組長暨責任工程師';
    #trace dependency from Project::UseCases::'設計與審查'::'設定發射頻率與功率' to Project::Stakeholders::'JRI 團隊'::'組長暨責任工程師';
    #trace dependency from Project::UseCases::'設計與審查'::'設定發射頻率與功率' to Project::Stakeholders::'法規'::'國家通訊傳播委員會';
    #trace dependency from Project::UseCases::'設計與審查'::'提出採購規格' to Project::Stakeholders::'供應'::'零件與材料供應商';
    #trace dependency from Project::UseCases::'設計與審查'::'提出採購規格' to Project::Stakeholders::'JRI 團隊'::'核心成員';
    #trace dependency from Project::UseCases::'設計與審查'::'詢價與確認交期與數量' to Project::Stakeholders::'供應'::'零件與材料供應商';
    #trace dependency from Project::UseCases::'設計與審查'::'詢價與確認交期與數量' to Project::Stakeholders::'JRI 團隊'::'核心成員';
    #trace dependency from Project::UseCases::'飛行與回收'::'取回火箭並提交飛行數據' to Project::Stakeholders::'JRI 團隊'::'核心成員';
    #trace dependency from Project::UseCases::'任務後'::'評定競賽成績' to Project::Stakeholders::'審查與評分'::'評審團';
    #trace dependency from Project::UseCases::'任務後'::'分析酬載實驗數據' to Project::Stakeholders::'JRI 團隊'::'組長暨責任工程師';
    #trace dependency from Project::UseCases::'任務後'::'分析酬載實驗數據' to Project::Stakeholders::'JRI 團隊'::'核心成員';
    #trace dependency from Project::UseCases::'任務後'::'提交飛行後報告' to Project::Stakeholders::'總工程師暨隊長';
    #trace dependency from Project::Stakeholders::'將酬載實驗裝置放進探空火箭' to Project::Stakeholders::'JRI 團隊'::'酬載提案委員會';
    #trace dependency from Project::Stakeholders::'發射與回收全程安全' to Project::Stakeholders::'主辦與規範'::'國家太空中心';
    #trace dependency from Project::Stakeholders::'發射與回收全程安全' to Project::Stakeholders::'主辦與規範'::'承辦單位';
    #trace dependency from Project::Stakeholders::'賽事流程順利進行' to Project::Stakeholders::'主辦與規範'::'承辦單位';
    #trace dependency from Project::Stakeholders::'評分依據客觀、可驗證' to Project::Stakeholders::'審查與評分'::'評審團';
    #trace dependency from Project::Stakeholders::'上架前確認可安全發射' to Project::Stakeholders::'審查與評分'::'發射許可審查委員';
    #trace dependency from Project::Stakeholders::'發動機在安全程序下操作' to Project::Stakeholders::'射場作業'::'推進系統工作人員';
    #trace dependency from Project::Stakeholders::'射場作業安全且有序' to Project::Stakeholders::'射場作業'::'發射指揮官';
    #trace dependency from Project::Stakeholders::'完整記錄並呈現發射過程' to Project::Stakeholders::'射場作業'::'直播與攝影團隊';
    #trace dependency from Project::Stakeholders::'安全且有效率地完成回收' to Project::Stakeholders::'回收作業'::'回收漁船船員';
    #trace dependency from Project::Stakeholders::'空拍不和火箭軌跡衝突' to Project::Stakeholders::'回收作業'::'無人機操作員';
    #trace dependency from Project::Stakeholders::'自身作業不受其他隊伍影響' to Project::Stakeholders::'其他參賽者'::'其他發射隊伍';
    #trace dependency from Project::Stakeholders::'頻段與功率合法' to Project::Stakeholders::'法規'::'國家通訊傳播委員會';
    #trace dependency from Project::Stakeholders::'收到可履行的訂單' to Project::Stakeholders::'供應'::'零件與材料供應商';
    #trace dependency from Project::Stakeholders::'任務達成完全成功' to Project::Stakeholders::'JRI 團隊'::'總工程師暨隊長';
    #trace dependency from Project::Stakeholders::'團隊在有限資源下可持續運作' to Project::Stakeholders::'JRI 團隊'::'副社長暨營運長';
    #trace dependency from Project::Stakeholders::'無人員受傷' to Project::Stakeholders::'JRI 團隊'::'指導員2-管制官';
    #trace dependency from Project::Stakeholders::'計劃在合規且可監督的狀態下進行' to Project::Stakeholders::'JRI 團隊'::'指導員1-教職員顧問';
    #trace dependency from Project::Stakeholders::'計劃在合規且可監督的狀態下進行' to Project::Stakeholders::'JRI 團隊'::'指導員2-管制官';
    #trace dependency from Project::Stakeholders::'分系統如期交付且確認可用' to Project::Stakeholders::'JRI 團隊'::'組長暨責任工程師';
    #trace dependency from Project::Stakeholders::'累積實作經驗與技術能力' to Project::Stakeholders::'JRI 團隊'::'核心成員';
    #trace dependency from Project::Stakeholders::'取得可用於宣傳的影像素材' to Project::Stakeholders::'JRI 團隊'::'業務發展組';
    #derive dependency from Project::NGOs::'於 2027 台灣盃決賽日，在旭海發射場以 84° ±1° 向正東發射' to Project::NGOs::'通過所有審查並符合法規與規範';
    #derive dependency from Project::NGOs::'火箭安全離架，並依序開啟減速傘與主傘' to Project::NGOs::'全程處於已知且受控的安全狀態';
    #derive dependency from Project::NGOs::'火箭濺落後漂浮於海面並被回收' to Project::NGOs::'全程處於已知且受控的安全狀態';
    #derive dependency from Project::NGOs::'取回飛行全程的高度、速度、加速度與 GPS 軌跡' to Project::NGOs::'以探空火箭飛行實驗取得燃盡前後的液體前衝數據';
    #derive dependency from Project::NGOs::'取回燃盡前後的液體前衝與撞擊後影像' to Project::NGOs::'以探空火箭飛行實驗取得燃盡前後的液體前衝數據';
    #derive dependency from Project::NGOs::'取回與影像時間同步的軸向加速度紀錄' to Project::NGOs::'以探空火箭飛行實驗取得燃盡前後的液體前衝數據';
    #derive dependency from Project::NGOs::'取回三軸角速度與橫向加速度紀錄' to Project::NGOs::'以探空火箭飛行實驗取得燃盡前後的液體前衝數據';
    #derive dependency from Project::NGOs::'取回發射至濺落的箭載影像' to Project::NGOs::'以探空火箭飛行實驗取得燃盡前後的液體前衝數據';
    #trace dependency from Project::NGOs::'取得引擎在大氣中關閉時液體前衝的飛行量測數據' to Project::Stakeholders::'將酬載實驗裝置放進探空火箭';
    #trace dependency from Project::NGOs::'累積團隊的火箭系統實作經驗與技術能力' to Project::Stakeholders::'累積實作經驗與技術能力';
    #trace dependency from Project::NGOs::'取得呈現團隊工程成果的影像素材' to Project::Stakeholders::'取得可用於宣傳的影像素材';
    #derive dependency from Project::NGOs::'讓成員完整經歷分系統的全生命週期' to Project::NGOs::'累積團隊的火箭系統實作經驗與技術能力';
    #derive dependency from Project::NGOs::'記錄飛行全程的影像' to Project::NGOs::'取得呈現團隊工程成果的影像素材';
    #derive dependency from Project::NGOs::'以探空火箭飛行實驗取得燃盡前後的液體前衝數據' to Project::NGOs::'取得引擎在大氣中關閉時液體前衝的飛行量測數據';
    #derive dependency from Project::NGOs::'取得發射離架的地面影像' to Project::NGOs::'記錄飛行全程的影像';
    #refine dependency from Project::NGOs::'MOE-01 決賽日發射達成' to Project::NGOs::'於 2027 台灣盃決賽日，在旭海發射場以 84° ±1° 向正東發射';
    #refine dependency from Project::NGOs::'MOE-02 減速傘開傘時刻與頂點時刻的時間差' to Project::NGOs::'火箭安全離架，並依序開啟減速傘與主傘';
    #refine dependency from Project::NGOs::'MOE-03 主傘開傘高度' to Project::NGOs::'火箭安全離架，並依序開啟減速傘與主傘';
    #refine dependency from Project::NGOs::'MOE-04 觸水速度' to Project::NGOs::'火箭濺落後漂浮於海面並被回收';
    #refine dependency from Project::NGOs::'MOE-05 浮力與重量比' to Project::NGOs::'火箭濺落後漂浮於海面並被回收';
    #refine dependency from Project::NGOs::'MOE-06 飛行數據時間涵蓋範圍' to Project::NGOs::'取回飛行全程的高度、速度、加速度與 GPS 軌跡';
    #refine dependency from Project::NGOs::'MOE-07 前衝影像實際影格率' to Project::NGOs::'取回燃盡前後的液體前衝與撞擊後影像';
    #refine dependency from Project::NGOs::'MOE-08 前衝影像時間涵蓋範圍' to Project::NGOs::'取回燃盡前後的液體前衝與撞擊後影像';
    #refine dependency from Project::NGOs::'MOE-09 軸向加速度實際取樣率' to Project::NGOs::'取回與影像時間同步的軸向加速度紀錄';
    #refine dependency from Project::NGOs::'MOE-10 軸向加速度量程飽和' to Project::NGOs::'取回與影像時間同步的軸向加速度紀錄';
    #refine dependency from Project::NGOs::'MOE-11 影像與加速度時間同步誤差' to Project::NGOs::'取回與影像時間同步的軸向加速度紀錄';
    #refine dependency from Project::NGOs::'MOE-12 三軸紀錄時間涵蓋範圍' to Project::NGOs::'取回三軸角速度與橫向加速度紀錄';
    #refine dependency from Project::NGOs::'MOE-13 箭載影像時間涵蓋範圍' to Project::NGOs::'取回發射至濺落的箭載影像';
    #refine dependency from Project::NGOs::'MOE-14 地面影像涵蓋發射離架' to Project::NGOs::'取得發射離架的地面影像';
    #derive dependency from Project::NGOs::'每位核心成員皆完成所屬分系統的設計、製造與測試' to Project::NGOs::'讓成員完整經歷分系統的全生命週期';
    #refine dependency from Project::NGOs::'完成技術文件的核心成員比例' to Project::NGOs::'每位核心成員皆完成所屬分系統的設計、製造與測試';
    #trace dependency from Project::Stakeholders::'發射不危及公共安全' to Project::Stakeholders::'國家科學及技術委員會';
    #trace dependency from Project::Stakeholders::'事故可即時通報與調查' to Project::Stakeholders::'國家科學及技術委員會';
    #trace dependency from Project::Stakeholders::'活動符合環境保護法規' to Project::Stakeholders::'國家科學及技術委員會';
    #trace dependency from Project::Stakeholders::'火箭不成為海洋廢棄物' to Project::Stakeholders::'海洋委員會與海巡';
    #trace dependency from Project::Stakeholders::'有害物質不排洩入海' to Project::Stakeholders::'海洋委員會與海巡';
    #trace dependency from Project::Stakeholders::'事業廢棄物依規定清運' to Project::Stakeholders::'環境部';
    #trace dependency from Project::Stakeholders::'危害性化學品有標示與通識' to Project::Stakeholders::'勞動部';
    #trace dependency from Project::Stakeholders::'作業危害有防護且可停工' to Project::Stakeholders::'勞動部';
    #trace dependency from Project::Stakeholders::'評選公平公正公開' to Project::Stakeholders::'評審總召集人';
    #trace dependency from Project::Stakeholders::'競賽爭議可依紀錄裁決' to Project::Stakeholders::'評審總召集人';
    #trace dependency from Project::Stakeholders::'目標變更有一致的確認程序' to Project::Stakeholders::'評審總召集人';
    #trace dependency from Project::Stakeholders::'各檢查站結果足以做最終判定' to Project::Stakeholders::'發射許可審查召集人';
    #trace dependency from Project::Stakeholders::'火箭符合設計安全規範' to Project::Stakeholders::'發射許可審查召集人';
    #trace dependency from Project::Stakeholders::'審查在規定時間內完成' to Project::Stakeholders::'發射許可審查召集人';
    #trace dependency from Project::Stakeholders::'異常時可立即確認人員狀況' to Project::Stakeholders::'安全指揮官';
    #trace dependency from Project::Stakeholders::'發射條件符合才發射' to Project::Stakeholders::'射場環境組';
    #trace dependency from Project::Stakeholders::'現場具備消防與送醫能力' to Project::Stakeholders::'射場環境組';
    #trace dependency from Project::Stakeholders::'火箭能在限制風速內安全離架' to Project::Stakeholders::'射場環境組';
    #trace dependency from Project::Stakeholders::'發射前場域淨空' to Project::Stakeholders::'射場管理組';
    #trace dependency from Project::Stakeholders::'相關單位已通知且回收船已待命' to Project::Stakeholders::'射場管理組';
    #trace dependency from Project::Stakeholders::'交通管制已完成' to Project::Stakeholders::'射場管理組';
    #trace dependency from Project::Stakeholders::'異常不擴大成災害' to Project::Stakeholders::'醫護及消防人員';
    #trace dependency from Project::Stakeholders::'異常狀態在可處置範圍內' to Project::Stakeholders::'醫護及消防人員';
    #trace dependency from Project::Stakeholders::'剩餘火箭可安全移除點火器' to Project::Stakeholders::'醫護及消防人員';
    #trace dependency from Project::Stakeholders::'依指導原則的週期與審查執行' to Project::Stakeholders::'AEAS 工程委員會';
    #trace dependency from Project::Stakeholders::'遵守安全協議與危害分級' to Project::Stakeholders::'AEAS 工程委員會';
    #trace dependency from Project::Stakeholders::'文件依規範撰寫歸檔與版本控制' to Project::Stakeholders::'AEAS 工程委員會';
    #trace dependency from Project::Stakeholders::'商標印在箭體上且在影像中可見' to Project::Stakeholders::'贊助者';
    #trace dependency from Project::Stakeholders::'贊助資源用於火箭製造與測試' to Project::Stakeholders::'贊助者';
    #trace dependency from Project::NGOs::'專案全程不危及人員、公眾與場域' to Project::Stakeholders::'任務達成完全成功';
    #trace dependency from Project::NGOs::'專案全程不危及人員、公眾與場域' to Project::Stakeholders::'無人員受傷';
    #trace dependency from Project::NGOs::'專案全程不危及人員、公眾與場域' to Project::Stakeholders::'發射與回收全程安全';
    #trace dependency from Project::NGOs::'專案全程不危及人員、公眾與場域' to Project::Stakeholders::'上架前確認可安全發射';
    #trace dependency from Project::NGOs::'專案全程不危及人員、公眾與場域' to Project::Stakeholders::'發動機在安全程序下操作';
    #trace dependency from Project::NGOs::'專案全程不危及人員、公眾與場域' to Project::Stakeholders::'射場作業安全且有序';
    #trace dependency from Project::NGOs::'專案全程不危及人員、公眾與場域' to Project::Stakeholders::'安全且有效率地完成回收';
    #trace dependency from Project::NGOs::'專案全程不危及人員、公眾與場域' to Project::Stakeholders::'空拍不和火箭軌跡衝突';
    #trace dependency from Project::NGOs::'專案全程不危及人員、公眾與場域' to Project::Stakeholders::'發射不危及公共安全';
    #trace dependency from Project::NGOs::'專案全程不危及人員、公眾與場域' to Project::Stakeholders::'作業危害有防護且可停工';
    #trace dependency from Project::NGOs::'專案全程不危及人員、公眾與場域' to Project::Stakeholders::'異常時可立即確認人員狀況';
    #trace dependency from Project::NGOs::'專案全程不危及人員、公眾與場域' to Project::Stakeholders::'發射條件符合才發射';
    #trace dependency from Project::NGOs::'專案全程不危及人員、公眾與場域' to Project::Stakeholders::'現場具備消防與送醫能力';
    #trace dependency from Project::NGOs::'專案全程不危及人員、公眾與場域' to Project::Stakeholders::'火箭能在限制風速內安全離架';
    #trace dependency from Project::NGOs::'專案全程不危及人員、公眾與場域' to Project::Stakeholders::'發射前場域淨空';
    #trace dependency from Project::NGOs::'專案全程不危及人員、公眾與場域' to Project::Stakeholders::'相關單位已通知且回收船已待命';
    #trace dependency from Project::NGOs::'專案全程不危及人員、公眾與場域' to Project::Stakeholders::'交通管制已完成';
    #trace dependency from Project::NGOs::'專案全程不危及人員、公眾與場域' to Project::Stakeholders::'異常不擴大成災害';
    #trace dependency from Project::NGOs::'專案全程不危及人員、公眾與場域' to Project::Stakeholders::'異常狀態在可處置範圍內';
    #trace dependency from Project::NGOs::'專案全程不危及人員、公眾與場域' to Project::Stakeholders::'剩餘火箭可安全移除點火器';
    #trace dependency from Project::NGOs::'專案全程不危及人員、公眾與場域' to Project::Stakeholders::'遵守安全協議與危害分級';
    #trace dependency from Project::NGOs::'專案符合規則、規範與法規且可被查證' to Project::Stakeholders::'任務達成完全成功';
    #trace dependency from Project::NGOs::'專案符合規則、規範與法規且可被查證' to Project::Stakeholders::'計劃在合規且可監督的狀態下進行';
    #trace dependency from Project::NGOs::'專案符合規則、規範與法規且可被查證' to Project::Stakeholders::'評分依據客觀、可驗證';
    #trace dependency from Project::NGOs::'專案符合規則、規範與法規且可被查證' to Project::Stakeholders::'自身作業不受其他隊伍影響';
    #trace dependency from Project::NGOs::'專案符合規則、規範與法規且可被查證' to Project::Stakeholders::'頻段與功率合法';
    #trace dependency from Project::NGOs::'專案符合規則、規範與法規且可被查證' to Project::Stakeholders::'事故可即時通報與調查';
    #trace dependency from Project::NGOs::'專案符合規則、規範與法規且可被查證' to Project::Stakeholders::'活動符合環境保護法規';
    #trace dependency from Project::NGOs::'專案符合規則、規範與法規且可被查證' to Project::Stakeholders::'火箭不成為海洋廢棄物';
    #trace dependency from Project::NGOs::'專案符合規則、規範與法規且可被查證' to Project::Stakeholders::'有害物質不排洩入海';
    #trace dependency from Project::NGOs::'專案符合規則、規範與法規且可被查證' to Project::Stakeholders::'事業廢棄物依規定清運';
    #trace dependency from Project::NGOs::'專案符合規則、規範與法規且可被查證' to Project::Stakeholders::'危害性化學品有標示與通識';
    #trace dependency from Project::NGOs::'專案符合規則、規範與法規且可被查證' to Project::Stakeholders::'評選公平公正公開';
    #trace dependency from Project::NGOs::'專案符合規則、規範與法規且可被查證' to Project::Stakeholders::'競賽爭議可依紀錄裁決';
    #trace dependency from Project::NGOs::'專案符合規則、規範與法規且可被查證' to Project::Stakeholders::'目標變更有一致的確認程序';
    #trace dependency from Project::NGOs::'專案符合規則、規範與法規且可被查證' to Project::Stakeholders::'各檢查站結果足以做最終判定';
    #trace dependency from Project::NGOs::'專案符合規則、規範與法規且可被查證' to Project::Stakeholders::'火箭符合設計安全規範';
    #trace dependency from Project::NGOs::'專案符合規則、規範與法規且可被查證' to Project::Stakeholders::'依指導原則的週期與審查執行';
    #trace dependency from Project::NGOs::'專案符合規則、規範與法規且可被查證' to Project::Stakeholders::'文件依規範撰寫歸檔與版本控制';
    #trace dependency from Project::NGOs::'在賽程與可負擔的資源內完成專案' to Project::Stakeholders::'團隊在有限資源下可持續運作';
    #trace dependency from Project::NGOs::'在賽程與可負擔的資源內完成專案' to Project::Stakeholders::'分系統如期交付且確認可用';
    #trace dependency from Project::NGOs::'在賽程與可負擔的資源內完成專案' to Project::Stakeholders::'賽事流程順利進行';
    #trace dependency from Project::NGOs::'在賽程與可負擔的資源內完成專案' to Project::Stakeholders::'收到可履行的訂單';
    #trace dependency from Project::NGOs::'在賽程與可負擔的資源內完成專案' to Project::Stakeholders::'審查在規定時間內完成';
    #trace dependency from Project::NGOs::'在賽程與可負擔的資源內完成專案' to Project::Stakeholders::'贊助資源用於火箭製造與測試';
    #trace dependency from Project::NGOs::'取得引擎在大氣中關閉時液體前衝的飛行量測數據' to Project::Stakeholders::'任務達成完全成功';
    #trace dependency from Project::NGOs::'取得呈現團隊工程成果的影像素材' to Project::Stakeholders::'任務達成完全成功';
    #trace dependency from Project::NGOs::'取得呈現團隊工程成果的影像素材' to Project::Stakeholders::'完整記錄並呈現發射過程';
    #trace dependency from Project::NGOs::'取得呈現團隊工程成果的影像素材' to Project::Stakeholders::'商標印在箭體上且在影像中可見';
    #derive dependency from Project::NGOs::'全程處於已知且受控的安全狀態' to Project::NGOs::'專案全程不危及人員、公眾與場域';
    #derive dependency from Project::NGOs::'通過所有審查並符合法規與規範' to Project::NGOs::'專案符合規則、規範與法規且可被查證';
    #derive dependency from Project::NGOs::'依賽程完成交付且支出不超過預算' to Project::NGOs::'在賽程與可負擔的資源內完成專案';
    #derive dependency from Project::NGOs::'通過發射許可審查全部項目' to Project::NGOs::'通過所有審查並符合法規與規範';
    #derive dependency from Project::NGOs::'危險作業都經管制官核可後執行' to Project::NGOs::'全程處於已知且受控的安全狀態';
    #derive dependency from Project::NGOs::'各階段報告與決賽文件準時繳交' to Project::NGOs::'依賽程完成交付且支出不超過預算';
    #derive dependency from Project::NGOs::'總支出不超過預算' to Project::NGOs::'依賽程完成交付且支出不超過預算';
    #refine dependency from Project::NGOs::'發射許可審查核可項數' to Project::NGOs::'通過發射許可審查全部項目';
    #refine dependency from Project::NGOs::'危險作業事前核可比例' to Project::NGOs::'危險作業都經管制官核可後執行';
    #refine dependency from Project::NGOs::'報告與決賽文件準時繳交項數' to Project::NGOs::'各階段報告與決賽文件準時繳交';
    #refine dependency from Project::NGOs::'總支出金額' to Project::NGOs::'總支出不超過預算';
    #trace dependency from Project::UseCases::'計劃管理'::'提出影像紀錄需求' to Project::Stakeholders::'JRI 團隊'::'業務發展組';

    package Behavior {
        action <'PH-001'> '總任務：RTC 2027 發射任務' : MissionPhase {
            doc /* Project RTC 2027 的完整任務，從火箭運送至發射場開始，到飛行數據讀取並提交為止，依序包含運輸、發射許可審查、火箭組裝、發射準備、待發射、離架與動力飛行、燃盡、滑行、減速傘下降、主傘下降、濺落與漂浮、海上回收、資料讀取與提交等階段；終止發射為自待發射階段分出的替代流程。 */
        }
        action <'PH-002'> '階段 1：運輸' : MissionPhase {
            doc /* 開始：火箭離開製造地點。結束：抵達發射場。期間火箭承受搬運與運輸的振動與衝擊，結構須保持完整。依據：STK-TASA-13。 */
        }
        action <'PH-003'> '階段 2：發射許可審查' : MissionPhase {
            doc /* 開始：抵達發射場。結束：取得發射許可。發射許可審查委員檢查火箭是否符合規範，團隊展示公版 GPS 追蹤器正常運作。依據：UC-016、STK-TASA-45。 */
        }
        action <'PH-004'> '階段 3：火箭組裝' : MissionPhase {
            doc /* 開始：取得發射許可後開始組裝。結束：火箭完成組裝，可進行發射準備。 */
        }
        action <'PH-005'> '階段 4：發射準備' : MissionPhase {
            doc /* 開始：安裝公版發動機。結束：火箭由導軌頂部水平裝載並完成上架。依據：UC-017、UC-018、STK-TASA-08、62。 */
        }
        action <'PH-006'> '階段 5：待發射' : MissionPhase {
            doc /* 開始：依審查委員指示，從外部啟動儲能裝置與航電。結束：官方發射控制點火。期間系統須維持運作，電池須可供系統正常運作至少 1.5 小時。依據：UC-018、STK-TASA-29、42。 */
        }
        action <'PH-007'> '階段 6：離架與動力飛行' : MissionPhase {
            doc /* 開始：點火。結束：發動機推力開始衰減。火箭沿發射架離架並加速上升，酬載容器內液體受推力沉降於容器後端。 */
        }
        action <'PH-008'> '階段 7：燃盡（推力尾段）' : MissionPhase {
            doc /* 開始：發動機推力開始衰減。結束：相對加速度翻轉後，液體前衝並撞擊容器前端蓋。此為酬載實驗的關鍵時段，酬載須在此期間取得同步的影像與慣性量測數據。依據：PPC 計劃書、OBJ-005～007。 */
        }
        action <'PH-009'> '階段 8：滑行' : MissionPhase {
            doc /* 開始：燃盡後。結束：火箭到達頂點。火箭受氣動阻力減速，酬載持續記錄液體撞擊後的衰減動態。 */
        }
        action <'PH-010'> '階段 9：減速傘下降' : MissionPhase {
            doc /* 開始：火箭到達頂點時開啟減速傘。結束：主傘開傘。依據：STK-TASA-18。 */
        }
        action <'PH-011'> '階段 10：主傘下降' : MissionPhase {
            doc /* 開始：離地 150～450 m 開啟主傘。結束：火箭觸水。依據：STK-TASA-19、23。 */
        }
        action <'PH-012'> '階段 11：濺落與漂浮' : MissionPhase {
            doc /* 開始：火箭觸水。結束：回收漁船抵達。火箭須漂浮於海面，並持續回傳位置供追蹤。依據：STK-TASA-02、UC-023。 */
        }
        action <'PH-013'> '階段 12：海上回收' : MissionPhase {
            doc /* 開始：回收漁船抵達。結束：火箭上岸。依據：UC-024。 */
        }
        action <'PH-014'> '階段 13：資料讀取與提交' : MissionPhase {
            doc /* 開始：火箭上岸後讀取航電與酬載資料。結束：飛行數據提交給主辦單位與評審。依據：UC-025、OBJ-004～008。 */
        }
        action <'PH-015'> '替代流程：終止發射與解除啟動' : MissionPhase {
            doc /* 自階段 5 待發射分出。開始：發射因異常、天候或指揮官指示而取消。結束：儲能裝置回到安全狀態，火箭安全下架。依據：UC-019、STK-TASA-28。 */
        }
    }
    #refine dependency from Project::Behavior::'階段 2：發射許可審查' to Project::Behavior::'總任務：RTC 2027 發射任務';
}
