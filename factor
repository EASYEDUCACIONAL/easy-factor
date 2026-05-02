<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>EASY Invest — Factor Invest & Valuation B3</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700;800&family=JetBrains+Mono:wght@400;500;600&display=swap" rel="stylesheet">
<style>
:root{--bg:#F0FAF4;--card:#FFF;--green-900:#14532D;--green-800:#166534;--green-700:#15803D;--green-600:#16A34A;--green-500:#22C55E;--green-100:#DCFCE7;--green-50:#F0FDF4;--navy:#0F172A;--slate:#475569;--muted:#94A3B8;--border:#D1FAE5;--border-dark:#A7F3D0;--amber:#D97706;--amber-dark:#92400E;--amber-bg:#FEF3C7;--red:#DC2626;--red-dark:#991B1B;--red-bg:#FEE2E2;--blue:#2563EB;--blue-bg:#EFF6FF;--blue-dark:#1D4ED8;}
*{margin:0;padding:0;box-sizing:border-box;}
body{font-family:'Outfit',sans-serif;background:var(--bg);color:var(--navy);min-height:100vh;font-size:14px;line-height:1.5;}
.mono{font-family:'JetBrains Mono',monospace;}
/* SITE HEADER */
.site-header{background:linear-gradient(135deg,#0A3D1F 0%,#14532D 50%,#166534 100%);color:white;padding:18px 28px;display:flex;align-items:center;justify-content:space-between;gap:16px;flex-wrap:wrap;border-bottom:4px solid #22C55E;box-shadow:0 4px 20px rgba(0,0,0,0.3);}
.site-logo-area{display:flex;align-items:center;gap:12px;line-height:0;}
.site-logo-area img{height:44px;display:block;vertical-align:middle;filter:none;border-radius:6px;}
.brand-text .brand-name{font-size:20px;font-weight:800;color:white;letter-spacing:-0.5px;}
.brand-text .brand-sub{font-size:11px;color:rgba(255,255,255,0.7);}
.site-controls{display:flex;align-items:center;gap:10px;flex-wrap:wrap;}
.market-pill{display:flex;align-items:center;gap:7px;background:rgba(255,255,255,0.15);border:1px solid rgba(255,255,255,0.3);border-radius:8px;padding:7px 13px;font-size:12px;font-weight:600;color:white;}
.upd-btn{display:inline-flex;align-items:center;gap:7px;background:rgba(255,255,255,0.2);border:2px solid rgba(255,255,255,0.4);color:white;border-radius:8px;padding:8px 16px;font-size:12px;font-family:'Outfit',sans-serif;font-weight:600;cursor:pointer;transition:all 0.15s;}
.upd-btn:hover{background:rgba(255,255,255,0.3);}
.upd-btn.loading{opacity:0.7;pointer-events:none;}
.spinner{width:13px;height:13px;border:2px solid rgba(255,255,255,0.3);border-top-color:white;border-radius:50%;display:none;animation:spin .8s linear infinite;}
.upd-btn.loading .spinner{display:block;}
@keyframes spin{to{transform:rotate(360deg);}}
.price-status{font-size:11px;color:rgba(255,255,255,0.6);text-align:right;}
.price-status.live{color:#86EFAC;}
.live-dot{width:8px;height:8px;border-radius:50%;background:#22C55E;animation:pulse 2s infinite;display:inline-block;}
@keyframes pulse{0%,100%{opacity:1;transform:scale(1);}50%{opacity:0.5;transform:scale(0.85);}}
/* OVERVIEW BAR */
.overview-bar{display:grid;grid-template-columns:repeat(5,1fr);gap:1px;background:var(--border);border-bottom:2px solid var(--border-dark);}
.ov-card{background:white;padding:11px 16px;display:flex;flex-direction:column;gap:2px;border-top:3px solid var(--green-600);}
.ov-card .ov-label{font-size:10px;font-weight:600;text-transform:uppercase;letter-spacing:0.5px;color:var(--green-700);}
.ov-card .ov-value{font-size:13px;font-weight:700;color:var(--navy);}
.ov-card .ov-sub{font-size:11px;color:var(--slate);}
/* SECTOR NAV */
.sector-nav{background:white;border-bottom:3px solid var(--green-100);padding:0 20px;display:flex;gap:0;position:sticky;top:0;z-index:200;box-shadow:0 2px 12px rgba(21,128,61,0.12);overflow-x:auto;}
.sec-btn{padding:13px 16px;border:none;border-bottom:3px solid transparent;background:none;cursor:pointer;font-family:'Outfit',sans-serif;font-size:12px;font-weight:600;color:var(--slate);white-space:nowrap;transition:all 0.15s;display:flex;align-items:center;gap:7px;}
.sec-btn:hover{color:var(--green-700);background:var(--green-50);}
.sec-btn.active{color:var(--green-700);border-bottom-color:var(--green-600);background:var(--green-50);}
.sec-badge{background:var(--green-100);color:var(--green-800);font-size:10px;font-weight:700;padding:1px 6px;border-radius:10px;}
.sec-btn.active .sec-badge{background:var(--green-600);color:white;}
/* SECTOR PANEL */
.sector-panel{display:none;}
.sector-panel.active{display:block;}
/* SECTOR HEADER */
.sec-header{background:linear-gradient(135deg,#14532D 0%,#166534 50%,#15803D 100%);color:white;padding:20px 28px 16px;display:flex;align-items:flex-start;justify-content:space-between;gap:20px;flex-wrap:wrap;border-bottom:3px solid #22C55E;}
.sec-header .sh-badge{display:inline-flex;align-items:center;gap:6px;background:rgba(255,255,255,0.15);border:1px solid rgba(255,255,255,0.25);border-radius:20px;padding:3px 12px;font-size:11px;font-weight:500;color:rgba(255,255,255,0.9);margin-bottom:8px;letter-spacing:0.5px;text-transform:uppercase;}
.sec-header h2{font-size:20px;font-weight:800;letter-spacing:-0.5px;color:white;}
.sec-header .sh-sub{font-size:12px;color:rgba(255,255,255,0.7);margin-top:3px;}
.sec-header-right{display:flex;flex-direction:column;align-items:flex-end;gap:7px;}
/* SUMMARY BAR */
.summary-bar{display:grid;grid-template-columns:repeat(4,1fr);gap:1px;background:var(--border);border-bottom:2px solid var(--border-dark);}
.summary-card{background:white;padding:11px 16px;display:flex;flex-direction:column;gap:2px;border-top:3px solid var(--green-600);}
.summary-card .sc-label{font-size:10px;font-weight:600;text-transform:uppercase;letter-spacing:0.5px;color:var(--green-700);}
.summary-card .sc-value{font-size:13px;font-weight:700;color:var(--navy);}
.summary-card .sc-sub{font-size:11px;color:var(--slate);}
/* TAB NAV (inner) */
.tab-nav{background:white;border-bottom:2px solid var(--green-100);padding:0 22px;display:flex;gap:0;position:sticky;top:52px;z-index:100;box-shadow:0 2px 8px rgba(21,128,61,0.08);overflow-x:auto;}
.tab-btn{padding:12px 15px;border:none;border-bottom:3px solid transparent;background:none;cursor:pointer;font-family:'Outfit',sans-serif;font-size:12px;font-weight:500;color:var(--slate);white-space:nowrap;transition:all 0.15s;display:flex;align-items:center;gap:6px;}
.tab-btn:hover{color:var(--green-700);}
.tab-btn.active{color:var(--green-700);border-bottom-color:var(--green-600);font-weight:700;}
.section{display:none;padding:20px;}
.section.active{display:block;}
.section-header{margin-bottom:14px;}
.section-header h3{font-size:17px;font-weight:700;color:var(--green-800);}
.section-header p{font-size:12px;color:var(--slate);margin-top:3px;}
/* TABLES */
.table-wrap{overflow-x:auto;border-radius:10px;border:1px solid var(--green-100);background:white;box-shadow:0 1px 6px rgba(21,128,61,0.06);}
table{width:100%;border-collapse:collapse;font-size:13px;}
thead tr{background:var(--green-800);color:white;}
thead th{padding:10px 11px;text-align:left;font-weight:600;font-size:11px;letter-spacing:0.3px;white-space:nowrap;border-right:1px solid rgba(255,255,255,0.1);}
thead th:last-child{border-right:none;}
tbody tr{border-bottom:1px solid var(--green-50);transition:background 0.1s;}
tbody tr:last-child{border-bottom:none;}
tbody tr:hover{background:#F0FDF4;}
td{padding:9px 11px;white-space:nowrap;border-right:1px solid var(--green-50);vertical-align:middle;}
td:last-child{border-right:none;}
.rank-num{font-family:'JetBrains Mono',monospace;font-weight:600;font-size:12px;color:var(--muted);width:28px;text-align:center;}
.ticker-chip{display:inline-block;background:var(--green-800);color:white;font-family:'JetBrains Mono',monospace;font-size:11px;font-weight:600;padding:3px 7px;border-radius:4px;letter-spacing:0.5px;}
.badge{display:inline-flex;align-items:center;gap:4px;padding:3px 9px;border-radius:20px;font-size:11px;font-weight:600;white-space:nowrap;}
.badge-compra-forte{background:var(--green-800);color:white;}
.badge-compra{background:var(--green-600);color:white;}
.badge-neutro{background:var(--amber);color:white;}
.badge-venda{background:var(--red);color:white;}
.classif-pechincha{background:#064E3B;color:#A7F3D0;padding:2px 8px;border-radius:4px;font-size:11px;font-weight:600;}
.classif-barato{background:var(--green-100);color:var(--green-800);padding:2px 8px;border-radius:4px;font-size:11px;font-weight:600;}
.classif-justo{background:var(--blue-bg);color:var(--blue-dark);padding:2px 8px;border-radius:4px;font-size:11px;font-weight:600;}
.classif-caro{background:var(--red-bg);color:var(--red-dark);padding:2px 8px;border-radius:4px;font-size:11px;font-weight:600;}
.score-2{background:var(--green-100);color:var(--green-800);font-weight:700;text-align:center;border-radius:4px;}
.score-1{background:var(--amber-bg);color:var(--amber-dark);font-weight:700;text-align:center;border-radius:4px;}
.score-0{background:var(--red-bg);color:var(--red-dark);font-weight:700;text-align:center;border-radius:4px;}
.val-mono{font-family:'JetBrains Mono',monospace;}
.val-price{font-family:'JetBrains Mono',monospace;font-weight:700;color:var(--green-800);}
.val-live{font-family:'JetBrains Mono',monospace;font-weight:700;color:var(--blue);}
.upside-pos{color:var(--green-700);font-weight:700;font-family:'JetBrains Mono',monospace;}
.upside-neg{color:var(--red);font-weight:700;font-family:'JetBrains Mono',monospace;}
.upside-neutral{color:var(--amber);font-weight:700;font-family:'JetBrains Mono',monospace;}
.score-display{display:flex;align-items:center;gap:8px;}
.score-bar-wrap{width:60px;height:4px;background:var(--green-100);border-radius:2px;overflow:hidden;}
.score-bar{height:100%;border-radius:2px;background:var(--green-600);}
.score-text{font-family:'JetBrains Mono',monospace;font-size:12px;font-weight:600;}
.subsetor-header{background:#F0FDF4!important;}
.subsetor-header td{font-weight:700;font-size:12px;color:var(--green-800);padding:8px 12px;letter-spacing:0.3px;background:#F0FDF4;}
.heatmap-wrap{background:white;border-radius:10px;border:1px solid var(--green-100);overflow:hidden;box-shadow:0 1px 4px rgba(21,128,61,0.06);margin-bottom:18px;}
.heatmap-header{background:var(--green-800);color:white;padding:11px 15px;font-weight:700;font-size:14px;display:flex;align-items:center;gap:8px;}
.heatmap-table{width:100%;border-collapse:collapse;}
.heatmap-table th{padding:8px 9px;font-size:10px;font-weight:700;text-align:center;background:var(--green-900);color:rgba(255,255,255,0.8);border-right:1px solid rgba(255,255,255,0.1);white-space:nowrap;}
.heatmap-table th:first-child{text-align:left;min-width:260px;}
.heatmap-table td{padding:8px 9px;border-right:1px solid var(--green-50);border-bottom:1px solid var(--green-50);font-size:12px;text-align:center;font-family:'JetBrains Mono',monospace;font-weight:700;}
.heatmap-table td:first-child{text-align:left;font-family:'Outfit',sans-serif;font-weight:500;color:var(--slate);font-size:12px;padding-left:14px;}
.heatmap-table tr:last-child td{background:var(--green-800)!important;color:white!important;font-weight:700;font-size:13px;border-color:rgba(255,255,255,0.1);}
.heatmap-table tr:last-child td:first-child{font-family:'Outfit',sans-serif;}
.proj-grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(340px,1fr));gap:16px;}
.proj-card{background:white;border:1px solid var(--green-100);border-radius:10px;overflow:hidden;box-shadow:0 1px 4px rgba(21,128,61,0.06);}
.proj-card-header{padding:12px 15px;background:var(--green-800);color:white;display:flex;align-items:center;justify-content:space-between;}
.proj-card-body{padding:13px 15px;}
.proj-row{display:flex;justify-content:space-between;align-items:center;padding:4px 0;border-bottom:1px solid var(--green-50);}
.proj-row:last-child{border-bottom:none;}
.proj-label{font-size:11px;color:var(--slate);}
.proj-val{font-family:'JetBrains Mono',monospace;font-size:13px;font-weight:600;}
.proj-scenarios{display:grid;grid-template-columns:1fr 1fr 1fr;gap:7px;margin-top:9px;padding-top:9px;border-top:1px solid var(--green-100);}
.scenario-box{border-radius:6px;padding:7px;text-align:center;}
.scenario-box .sc-name{font-size:9px;font-weight:700;text-transform:uppercase;letter-spacing:0.5px;}
.scenario-box .sc-alvo{font-family:'JetBrains Mono',monospace;font-size:12px;font-weight:700;margin:2px 0;}
.scenario-box .sc-ret{font-family:'JetBrains Mono',monospace;font-size:13px;font-weight:800;}
.scen-pess{background:var(--red-bg);color:var(--red-dark);}
.scen-real{background:var(--blue-bg);color:var(--blue-dark);}
.scen-otim{background:var(--green-100);color:var(--green-800);}
.analise-grid{display:grid;gap:16px;}
.analise-card{background:white;border:1px solid var(--green-100);border-radius:12px;overflow:hidden;box-shadow:0 2px 8px rgba(21,128,61,0.06);}
.analise-card-header{background:var(--green-800);color:white;padding:13px 17px;display:flex;align-items:center;justify-content:space-between;flex-wrap:wrap;gap:8px;}
.analise-ticker{font-family:'JetBrains Mono',monospace;font-size:16px;font-weight:700;}
.analise-nome{font-size:13px;opacity:0.85;}
.analise-score{background:rgba(255,255,255,0.2);border:1px solid rgba(255,255,255,0.3);border-radius:8px;padding:4px 12px;font-size:12px;font-weight:700;}
.analise-card-body{padding:17px;}
.analise-summary{display:grid;grid-template-columns:repeat(auto-fill,minmax(105px,1fr));gap:9px;margin-bottom:16px;padding:11px;background:var(--green-50);border-radius:8px;border:1px solid var(--green-100);}
.analise-kpi{text-align:center;}
.analise-kpi .kpi-label{font-size:10px;color:var(--muted);font-weight:600;text-transform:uppercase;letter-spacing:0.5px;}
.analise-kpi .kpi-val{font-size:14px;font-weight:700;color:var(--green-800);font-family:'JetBrains Mono',monospace;}
.analise-section{margin-bottom:13px;}
.analise-section-title{font-size:12px;font-weight:700;color:var(--green-800);margin-bottom:7px;padding:5px 11px;background:var(--green-50);border-left:3px solid var(--green-600);border-radius:0 6px 6px 0;}
.analise-section-content{font-size:12px;color:var(--slate);line-height:1.6;white-space:pre-line;padding:0 6px;}
.analise-section-content.neg{color:#7F1D1D;}
.decisorio-section{background:white;border-radius:10px;border:1px solid var(--green-100);overflow:hidden;box-shadow:0 1px 4px rgba(21,128,61,0.06);margin-bottom:16px;}
.decisorio-header{background:var(--green-800);color:white;padding:11px 15px;font-weight:700;font-size:13px;display:flex;align-items:center;gap:8px;}
.decisorio-table{width:100%;border-collapse:collapse;}
.decisorio-table th{background:var(--green-900);color:rgba(255,255,255,0.8);padding:8px 11px;font-size:11px;font-weight:600;text-align:left;white-space:nowrap;border-right:1px solid rgba(255,255,255,0.08);}
.decisorio-table td{padding:9px 11px;border-bottom:1px solid var(--green-50);border-right:1px solid var(--green-50);vertical-align:middle;white-space:nowrap;}
.decisorio-table td:last-child{border-right:none;white-space:normal;}
.decisorio-table tr:last-child td{border-bottom:none;}
.strategy-text{font-size:11px;color:var(--slate);max-width:300px;white-space:normal;line-height:1.4;}
.legend{display:flex;align-items:center;gap:12px;padding:9px 14px;background:var(--green-50);border-top:1px solid var(--green-100);flex-wrap:wrap;}
.legend-item{display:flex;align-items:center;gap:5px;font-size:11px;color:var(--slate);}
.legend-dot{width:10px;height:10px;border-radius:2px;}
.method-box{background:var(--green-50);border:1px solid var(--green-100);border-left:4px solid var(--green-600);border-radius:8px;padding:12px 14px;margin-bottom:14px;font-size:11px;color:var(--green-800);}
.aviso-box{background:#FFF7ED;border:1px solid #FED7AA;border-left:4px solid #F59E0B;border-radius:8px;padding:12px 14px;margin-top:14px;font-size:12px;color:#92400E;}
.sticky-col{position:sticky;left:0;background:white;z-index:10;border-right:2px solid var(--border-dark)!important;}
thead .sticky-col{background:var(--green-800);z-index:11;}
.data-date{background:rgba(255,255,255,0.15);border:1px solid rgba(255,255,255,0.2);color:rgba(255,255,255,0.85);font-size:11px;padding:2px 8px;border-radius:4px;font-family:'JetBrains Mono',monospace;}
/* HISTORY DB */
.hist-panel{background:white;border:1px solid var(--green-100);border-radius:10px;overflow:hidden;box-shadow:0 1px 6px rgba(21,128,61,0.06);margin-bottom:18px;}
.hist-header{background:var(--green-800);color:white;padding:11px 15px;font-weight:700;font-size:13px;display:flex;align-items:center;justify-content:space-between;gap:10px;flex-wrap:wrap;}
.hist-controls{display:flex;gap:8px;align-items:center;flex-wrap:wrap;}
.hist-controls select,.hist-controls input[type=text]{background:rgba(255,255,255,0.15);border:1px solid rgba(255,255,255,0.3);color:white;padding:5px 9px;border-radius:6px;font-family:'Outfit',sans-serif;font-size:11px;cursor:pointer;}
.hist-controls select option{background:var(--green-800);color:white;}
.hist-save-btn{background:rgba(34,197,94,0.3);border:1px solid rgba(34,197,94,0.5);color:white;padding:5px 12px;border-radius:6px;font-size:11px;font-weight:600;cursor:pointer;}
.hist-save-btn:hover{background:rgba(34,197,94,0.5);}
.hist-body{padding:14px;}
.hist-empty{text-align:center;color:var(--muted);padding:24px;font-size:13px;}
.hist-timeline{display:flex;flex-direction:column;gap:10px;}
.hist-entry{border:1px solid var(--green-100);border-radius:8px;padding:11px 14px;background:var(--green-50);}
.hist-entry-hdr{display:flex;align-items:center;justify-content:space-between;margin-bottom:7px;flex-wrap:wrap;gap:5px;}
.hist-date{font-family:'JetBrains Mono',monospace;font-size:11px;color:var(--slate);}
.hist-ticker{font-family:'JetBrains Mono',monospace;font-size:13px;font-weight:700;color:var(--green-800);}
.hist-del-btn{background:var(--red-bg);color:var(--red-dark);border:1px solid var(--red);border-radius:4px;padding:2px 8px;font-size:10px;cursor:pointer;}
.hist-kpis{display:flex;flex-wrap:wrap;gap:10px;}
.hist-kpi{text-align:center;min-width:65px;}
.hist-kpi .hk-label{font-size:10px;color:var(--muted);text-transform:uppercase;letter-spacing:0.3px;}
.hist-kpi .hk-val{font-size:13px;font-weight:700;font-family:'JetBrains Mono',monospace;color:var(--green-800);}
/* LANDING / SUBSCRIPTION */
.landing-hero{background:linear-gradient(135deg,#0A3D1F 0%,#14532D 60%,#166534 100%);padding:56px 28px;text-align:center;color:white;}
.landing-hero h1{font-size:32px;font-weight:800;letter-spacing:-1px;margin-bottom:14px;}
.landing-hero p{font-size:15px;color:rgba(255,255,255,0.8);max-width:580px;margin:0 auto 28px;line-height:1.6;}
.hero-badges{display:flex;justify-content:center;gap:10px;flex-wrap:wrap;margin-bottom:28px;}
.hero-badge{background:rgba(255,255,255,0.15);border:1px solid rgba(255,255,255,0.3);border-radius:20px;padding:5px 14px;font-size:12px;font-weight:600;}
.plans-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(260px,1fr));gap:18px;max-width:960px;margin:0 auto;padding:0 24px;}
.plan-card{background:white;border-radius:14px;padding:26px;border:2px solid var(--green-100);box-shadow:0 4px 20px rgba(0,0,0,0.08);position:relative;overflow:hidden;}
.plan-card.featured{border-color:var(--green-600);}
.plan-card.featured::before{content:'MAIS POPULAR';position:absolute;top:13px;right:-22px;background:var(--green-600);color:white;font-size:10px;font-weight:700;padding:3px 28px;transform:rotate(45deg);letter-spacing:0.5px;}
.plan-name{font-size:13px;font-weight:600;color:var(--slate);text-transform:uppercase;letter-spacing:0.5px;margin-bottom:4px;}
.plan-price{font-size:34px;font-weight:800;color:var(--green-800);margin-bottom:2px;}
.plan-price span{font-size:15px;font-weight:500;color:var(--slate);}
.plan-period{font-size:11px;color:var(--muted);margin-bottom:18px;}
.plan-features{list-style:none;margin-bottom:22px;}
.plan-features li{font-size:12px;color:var(--navy);padding:5px 0;display:flex;align-items:flex-start;gap:8px;border-bottom:1px solid var(--green-50);}
.plan-features li:last-child{border-bottom:none;}
.plan-features li::before{content:'✓';color:var(--green-600);font-weight:700;margin-top:1px;flex-shrink:0;}
.plan-cta{display:block;width:100%;padding:12px;background:var(--green-600);color:white;border:none;border-radius:10px;font-size:14px;font-weight:700;font-family:'Outfit',sans-serif;cursor:pointer;transition:background 0.15s;text-align:center;}
.plan-cta:hover{background:var(--green-700);}
.plan-card.featured .plan-cta{background:var(--green-800);}
.features-section{padding:44px 24px;max-width:1100px;margin:0 auto;}
.features-section h2{font-size:22px;font-weight:800;color:var(--green-800);text-align:center;margin-bottom:8px;}
.features-section p{text-align:center;color:var(--slate);margin-bottom:28px;font-size:13px;}
.features-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(240px,1fr));gap:18px;}
.feature-card{background:white;border:1px solid var(--green-100);border-radius:12px;padding:18px;box-shadow:0 1px 4px rgba(21,128,61,0.06);}
.feature-card .fc-icon{font-size:26px;margin-bottom:9px;}
.feature-card h3{font-size:14px;font-weight:700;color:var(--green-800);margin-bottom:5px;}
.feature-card p{font-size:12px;color:var(--slate);line-height:1.5;}
/* SECTOR OVERVIEW CARD */
.sec-overview-grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(200px,1fr));gap:12px;margin-bottom:16px;}
.sec-overview-item{background:white;border:1px solid var(--green-100);border-radius:8px;padding:14px;text-align:center;cursor:pointer;transition:all 0.15s;box-shadow:0 1px 4px rgba(21,128,61,0.04);}
.sec-overview-item:hover{border-color:var(--green-500);box-shadow:0 2px 8px rgba(21,128,61,0.12);}
.sec-overview-item .soi-icon{font-size:22px;margin-bottom:6px;}
.sec-overview-item .soi-name{font-size:12px;font-weight:700;color:var(--green-800);}
.sec-overview-item .soi-count{font-size:11px;color:var(--slate);}
.sec-overview-item .soi-top{font-size:11px;color:var(--green-700);font-weight:600;margin-top:4px;}
/* FOOTER */
.site-footer{text-align:center;padding:18px;color:var(--muted);font-size:11px;border-top:2px solid var(--green-100);background:white;margin-top:8px;}
@media(max-width:768px){
.overview-bar{grid-template-columns:repeat(2,1fr);}
.summary-bar{grid-template-columns:repeat(2,1fr);}
.site-header{padding:14px 16px;}
.section{padding:14px;}
.proj-grid{grid-template-columns:1fr;}
.plans-grid{grid-template-columns:1fr;padding:0 14px;}
.landing-hero h1{font-size:22px;}
.landing-hero{padding:36px 16px;}
}
</style>
</head>
<body>

<!-- ═══════════════════════════════════════════════════
     SITE HEADER
════════════════════════════════════════════════════ -->
<header class="site-header">
  <div class="site-logo-area">
    <img src="data:image/png;base64,/9j/4AAQSkZJRgABAgAAAQABAAD/wAARCANIBbADACIAAREBAhEB/9sAQwAIBgYHBgUIBwcHCQkICgwUDQwLCwwZEhMPFB0aHx4dGhwcICQuJyAiLCMcHCg3KSwwMTQ0NB8nOT04MjwuMzQy/9sAQwEJCQkMCwwYDQ0YMiEcITIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIy/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMAAAERAhEAPwDzuiiig+fCiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAoo61NHa3M3+qt5pP91CaV0BDRWhHoWry/c0u9P/AGwb/CrC+FPEDj5dHvP+/dS6sI7yRShJ7Ix6K2f+ES8Q/wDQGu/++KP+ES8Q/wDQHu/++Kn29L+Zfeh+zn2ZjUVs/wDCJeIf+gPd/wDfFH/CJeIf+gPd/wDfFHt6X8y+9B7OfZmNRWz/AMIl4h/6A93/AN8Uf8Il4h/6A93/AN8Ue3pfzL70Hs59mY1FbP8AwiXiH/oD3f8A3xR/wiXiH/oD3f8A3xR7el/MvvQezn2ZjUVs/wDCJeIf+gPd/wDfFH/CJeIf+gPd/wDfFHt6X8y+9B7OfZmNRWz/AMIl4h/6A93/AN8Uf8Il4h/6A93/AN8Ue3pfzL70Hs59mY1FbP8AwiXiH/oD3f8A3xR/wiXiH/oD3f8A3xR7el/MvvQezn2ZjUVs/wDCJeIf+gPd/wDfFH/CJeIf+gPd/wDfFHt6X8y+9B7OfZmNRWz/AMIl4h/6A93/AN8Uf8Il4h/6A93/AN8Ue3pfzL70Hs59mY1FbP8AwiXiH/oD3f8A3xR/wiXiH/oD3f8A3xR7el/MvvQezn2ZjUVs/wDCJeIf+gPd/wDfFH/CJeIf+gPd/wDfFHt6X8y+9B7OfZmNRWz/AMIl4h/6A93/AN8Uf8Il4h/6A93/AN8Ue3pfzL70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54hdbmfdb6eDzKR80nso/r0r2PTdLs9IsktLGBYYV7Dqx9Se5q0qKiBEUKqjAUDAAp1fnGa53Wx8uVaQ7f5n02EwMMOr7y7hRRRXhneFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABWTr3h3T/ENp5F7F84H7uZeHQ+x9PataitqNadGanTdmiJwjNcsldHgfiXwpf+GrnE4821c/u7hB8p9j6H2rBr6UurS3vrWS2uoUlhkGGRxkGvHfGPgWfQWa9sd82nE892h/3vUe/wCdff5NxBDFWo4jSffo/wDgnzuNy6VL36esfyONooor6c8oKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigApQCSAASTwAO9ABJAAJJ4AFes+BfAw09Y9V1SMG8I3QwsP9T7n/a/lXHjsdSwVJ1ar9F1bN8Ph5158sCPwT4BW0EeqavGGuPvQ27DIj929/bt9a9Eoor8wzHMa2Oq+0qPToux9VhsNChDlj94UUUV550hRRRSAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAprIsiMjqGVhggjIIp1FNO2qA8k8beAzp3manpKFrP70sA5MXuP9n+VcBX00QCCCMg9Qa8n8d+BvsJk1bSoj9mPzTQKP8AV/7Q/wBn+VfdZDn/ALS2GxT16Pv5PzPn8wy7lvVpLTqjz2iiivsTxQooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAoorvvh94O/tKZdX1CP/Q4mzDGw/wBaw7n/AGR+tc+KxNPC0nWquyRrRpSqzUI7s1PAHgoQrHrWqRfvT81tC4+6P75Hr6V6RR/Kivy3Msxq46s6k9ui7I+swuGjh4csQooorzjpCiiikAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFIQGBDAEHgg9xS0U07AePePPBZ0iZtT05M2EjZkjA/wBSx/8AZT+lcNX0vNDFcQvDMivHIpV1YZDA9q8P8aeE5PDeo74QzafOSYXPO0/3D7/zFfoHD2de3Sw1d+8tn3/4P5nzmZYH2b9rTWnU5iiiivqzyAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKsWNlPqV9DZ2qF55mCqo/r7Um0tWCVza8H+GZPEmrBHBWyhw07j07KPc17pDDHbwRwwoscUahURRgKB0FZ+gaHb+H9IisYMEr80knd3PU1qV+Z57mzxtbkg/cjt5+f+R9Tl+E9hC8viYUUUV4B6IUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUwCiiigAoooosAUUUUgCiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACqeqaZbaxp01jdpuilGPdT2I9xVyitITcJKUXZomUVJWZ87a5o1zoOrS2FyMlDlHHR17MKzq908a+GF8RaSTCoF9AC0Df3vVT9f514a6NG7I6lXUkMp6g+hr9QybM44+heXxrf/P5nymOwrw9TTZ7DaKKK9g4gooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAr1z4beGfsFj/bF0mLm5XEII+5H6/U/yrh/BXh4+IddRJFP2O3xJOfUdl/E/1r3VVCgAAAAYAHYV8pxNmfsaf1Wm/elv5L/g/kevlWF55e1lstvUWiiivz8+jCiiikAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAyWWOGJ5JXVI0BZmY4AA7mvL9f+KNw07waJEiRKcC4lXLN7gdh9a0vinq8ltpltpkTFftTF5CD1Vccfmf0ryavseHskpYin9ZxCuui/Vni5ljp05eypvXqb7eN/ErMSdXnGfQKB/KnR+OfEsbhxq0zY7MqkH9K56ivrf7MwVreyj9x4/1qv/O/vPU/DPxL+13MdnrUccTOdqXKcLn/AGh2+tejj65r5lr2/wCHurSar4WiEzFprVjAzHqQMFf0I/KvkuIclpYen9Zw6sr6r9T2Mux06svZVHd9Dq6KKK+PPaCi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7z4F/wCRK0v/AK5n/wBCNdDXPeBf+RK0v/rmf/QjXQ1+R5p/vtb/ABP8z7LCfwIei/IKKKK886AooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigDzb4raTJLDZ6tGpZYgYZSOwJyp/PP515dX0rc20N5bSW9xGskMilXRhwRXlmvfC+8gmabRXW4gJyIZGCuvtk8GvueHc4oworC13ZrZng5lgpyn7Wmr9zz2it5vBfiRWIOj3GfbB/rSDwZ4jJx/Y9z+IH+NfWfW6Fr86+9Hj+xqdYv7jCrt/hlpL3niE6gynyLNT82OrsMAflk0aP8ADLV7yZW1HbYwfxZYO5+gHH516tpel2mjWEdlZRCOFPxLHuSe5rwc7zuhSoSpUZc05aadPO56GBwFSdRTmrJF2iiivzk+mCiiikAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAVBeXcFhZTXdy4SGFC7t7Cp68q+Jfib7Tcf2HaPmKFg1ywP3n7L+H8/pXdl+CnjK8aMOu/kjDEV40Kbmzi9d1ebXdYn1CbI8xvkTP3FHQVnUUV+s0KMKFONKCslofH1JupJyluwooorUgKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA958C/8iVpf/XM/wDoRroa57wL/wAiVpf/AFzP/oRroa/I80/32t/if5n2WE/gQ9F+QUUUV550BRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRTAKKKKLisFFFFAwooopAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFUtV1S20bTZr67fbFEM47sewHuaqMXJpITaSuzG8a+J08O6SREwN/cArAv931Y+w/nXhjM0js7sWZiSWJySfWtDXNZude1WW/uj8z8InZFHQCs6v07I8qWBo3n8ct/Ly/rqfK4/FuvO0fhQUUUV7hwBRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQB7z4F/5ErS/+uZ/9CNdDXPeBf8AkStL/wCuZ/8AQjXQ1+R5p/vtb/E/zPssJ/Ah6L8gooorzzoCiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiikJCgkkADqT2piGzTR28Mk0zrHFGpZ3Y8ADvXh3jLxVJ4k1HbEWSwgJEKH+I/3z7mtTx74z/taZtL0+T/QI2/eOP+WzD/2UfrXC193w7kvs0sXXWv2V28/XseDmWO5r0ab06/5BRRRX2B4gUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFAHvPgX/AJErS/8Armf/AEI10Nc94F/5ErS/+uZ/9CNdDX5Hmn++1v8AE/zPssJ/Ah6L8gooorzzoCiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKRmVELOwVVGSScACmgAnAyeMV5V478c/bPM0jSZf8AR/uzzqf9Z/sqf7vv3pnjfx4b/wAzS9JkK2v3ZrgcGX2X/Z/nXn1fZ5DkDk1icStOi/Vnh5hmFr0qXzYUUUV9weCFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAe8+Bf+RK0v/rmf/QjXQ1z3gX/AJErS/8Armf/AEI10Nfkeaf77W/xP8z7LCfwIei/IKKKK886AooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKytd8Q6f4eszPezAMR+7hX78h9h/WrhCU5KMVdsmUkldl+7u7ewtZLm6mWGCMZZ2OAK8c8X+OrjXmazst0GnA9OjTe7e3tWX4k8VX/iW53Tny7ZD+6t1Pyr7n1PvWFX3uTcOxo2r4pXl0XRf5s+fxuZOd6dLbuFFFFfWHjhRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQB7z4F/wCRK0v/AK5n/wBCNdDXPeBf+RK0v/rmf/QjXQ1+R5p/vtb/ABP8z7LCfwIei/IKKKK886AooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiimAUVk634k0zw/B5l9cAORlIU5dvoP615N4j8e6nru+CEmzsjx5UbfM4/wBpv6DivTy/KcRjpfu1aPd7f8H5HJiMZSoL3nr2O28U/EW00sPaaUUurwcGTrHGf/Zj7V5NfX91qV291eTvNM55dzn8B6Cq9FfoOWZPh8BG8VeXd/p2PnMVjamIdnouwUUUV65xhRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAe8+Bf+RK0v/rmf/QjXQ1z3gX/AJErS/8Armf/AEI10Nfkeaf77W/xP8z7LCfwIei/IKKKK886AooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooopgFFYmr+LdE0Xct1fIZh/wAsYvnf8h0/GvP9Z+KV/c7otKgFpGePNkw0n5dB+tejg8qxWLf7qGnd6L7zmrYujR+OWp6bqms6fo1v52oXUcK9gx+ZvoOprzbXvihc3G6DRojbx9PtEgy5+g6D9a4K6uri9nae6nkmlbq8jFiahr7DAcL0KNp4h877dP8Agni4jNpz0paL8SSeea5maaeV5ZXOWd2yT+JqOiivqIxjBcsVZHkttu7CiiiqEFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAe8+Bf8AkStL/wCuZ/8AQjXQ1z3gUf8AFFaX/wBcz/6Ea6HFfkeaf77W/wAT/M+xwn8CHovyCijBowa4DpCijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBooAKKMH0NNMiKMs6qB6nFADqKz59d0m2z52p2aEdjMufyzWXdePfDVqOdSWU+kKM39K2hhq1T4IN/IiVSEfidjpKK4C6+K+lx5FpYXU59XIQf1P6VgXvxV1ebItLS1th2JzIf14r0aORZhV2pteuhyzzDDw3l9x69j61lal4k0bSQftuoQRsP4A25vyHNeI3/inXNTBF1qdwyH+BW2L+QxWQeTk8n1Ne3huEqj1r1EvTX/ACOGpnEV/Djf1PVdS+K9pHuXTLGSZu0k52L+Q5ritW8a69rAZJr1ooT/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AV/kH1mt/O/vZr/8JVr/AP0GLz/v4aP+Eq1//oMXn/fw1kUUf2fhP+fUf/AV/kH1mt/O/vZr/wDCVa//ANBi8/7+GkPijXmGDq95/wB/TWTRR/Z+E/59R/8AAV/kH1mt/O/vZel1rVJv9ZqV231mb/GqkkskpzJI7/7zE0yitYYejD4YJfJESqzlu2FFFFapJEBRRRTAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigD3r/hSXhv/AJ/tW/7+x/8Axuj/AIUl4b/5/tW/7+x//G69JooPY+q0e35nm3/CkvDf/P8Aat/39j/+N0f8KS8N/wDP9q3/AH9j/wDjdek0UB9Vo9vzPNv+FJeG/wDn+1b/AL+x/wDxuj/hSXhv/n+1b/v7H/8AG69JooD6rR7fmebf8KS8N/8AP9q3/f2P/wCN0f8ACkvDf/P9q3/f2P8A+N16TRQH1Wj2/M82/wCFJeG/+f7Vv+/sf/xuj/hSXhv/AJ/tW/7+x/8AxuvSaKA+q0e35nm3/CkvDf8Az/at/wB/Y/8A43R/wpLw3/z/AGrf9/Y//jdek0UB9Vo9vzPNv+FJeG/+f7Vv+/sf/wAbo/4Ul4b/AOf7Vv8Av7H/APG69JooD6rR7fmebf8ACkvDf/P9q3/f2P8A+N0f8KS8N/8AP9q3/f2P/wCN16TRQH1Wj2/M82/4Ul4b/wCf7Vv+/sf/AMbo/wCFJeG/+f7Vv+/sf/xuvSaKA+q0e35nm3/CkvDf/P8Aat/39j/+N0f8KS8N/wDP9q3/AH9j/wDjdek0UB9Vo9vzPNv+FJeG/wDn+1b/AL+x/wDxuj/hSXhv/n+1b/v7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uj/hSXhv/n+1b/v7H/8AG69JooD6rR7fmebf8KS8N/8AP9q3/f2P/wCN0f8ACkvDf/P9q3/f2P8A+N16TRQH1Wj2/M82/wCFJeG/+f7Vv+/sf/xuj/hSXhv/AJ/tW/7+x/8AxuvSaKA+q0e35nm3/CkvDf8Az/at/wB/Y/8A43R/wpLw3/z/AGrf9/Y//jdek0UB9Vo9vzPNv+FJeG/+f7Vv+/sf/wAbo/4Ul4b/AOf7Vv8Av7H/APG69JooD6rR7fmebf8ACkvDf/P9q3/f2P8A+N0f8KS8N/8AP9q3/f2P/wCN16TRQH1Wj2/M82/4Ul4b/wCf7Vv+/sf/AMbo/wCFJeG/+f7Vv+/sf/xuvSaKA+q0e35nm3/CkvDf/P8Aat/39j/+N0f8KS8N/wDP9q3/AH9j/wDjdek0UB9Vo9vzPNv+FJeG/wDn+1b/AL+x/wDxuj/hSXhv/n+1b/v7H/8AG69JooD6rR7fmebf8KS8N/8AP9q3/f2P/wCN0f8ACkvDf/P9q3/f2P8A+N16TRQH1Wj2/M82/wCFJeG/+f7Vv+/sf/xuj/hSXhv/AJ/tW/7+x/8AxuvSaKA+q0e35nm3/CkvDf8Az/at/wB/Y/8A43R/wpLw3/z/AGrf9/Y//jdek0UB9Vo9vzPNv+FJeG/+f7Vv+/sf/wAbo/4Ul4b/AOf7Vv8Av7H/APG69JooD6rR7fmebf8ACkvDf/P9q3/f2P8A+N0f8KS8N/8AP9q3/f2P/wCN16TRQH1Wj2/M82/4Ul4b/wCf7Vv+/sf/AMbo/wCFJeG/+f7Vv+/sf/xuvSaKA+q0e35nm3/CkvDf/P8Aat/39j/+N0f8KS8N/wDP9q3/AH9j/wDjdek0UB9Vo9vzPNv+FJeG/wDn+1b/AL+x/wDxuj/hSXhv/n+1b/v7H/8AG69JooD6rR7fmFFFFB0BRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFAH/9k=" alt="EASY Invest" onerror="this.style.display='none'">
    <div class="brand-text">
      <div class="brand-name">EASY Invest</div>
      <div class="brand-sub">Factor Invest & Valuation — Análise Setorial B3</div>
    </div>
  </div>
  <div class="site-controls">
    <div class="market-pill">
      <span class="live-dot"></span>
      <span id="marketStatus" style="font-size:12px;font-weight:600;color:white;">Verificando...</span>
    </div>
    <button class="upd-btn" id="updateBtn" onclick="fetchAllSectorPrices()">
      <div class="spinner"></div>
      <span id="updateBtnText">⟳ Atualizar Cotações</span>
    </button>
    <div id="priceStatus" class="price-status">Carregando cotações...</div>
  </div>
</header>

<!-- ═══ OVERVIEW BAR ═══ -->
<div class="overview-bar">
  <div class="ov-card">
    <span class="ov-label">📊 Setores Analisados</span>
    <span class="ov-value">5 Setores · 13 Sub-Setores</span>
    <span class="ov-sub">Energia · Petróleo · Imob. · Equip. · Saúde</span>
  </div>
  <div class="ov-card">
    <span class="ov-label">🏢 Empresas Cobertas</span>
    <span class="ov-value">80 Empresas B3</span>
    <span class="ov-sub">13 fatores · 26 pts máx · Dados 2026</span>
  </div>
  <div class="ov-card">
    <span class="ov-label">🏆 Top Compras (Cross)</span>
    <span class="ov-value" id="globalTopBuy">PETR3 · EALT3 · GMAT3</span>
    <span class="ov-sub">Maiores pontuações Factor Invest</span>
  </div>
  <div class="ov-card">
    <span class="ov-label">📈 Maiores Upsides</span>
    <span class="ov-value" id="globalTopUpside">Calculando...</span>
    <span class="ov-sub">vs. Preço Justo — tempo real</span>
  </div>
  <div class="ov-card">
    <span class="ov-label">💡 Metodologia</span>
    <span class="ov-value">Factor Invest + DCF</span>
    <span class="ov-sub">WACC setorial · Valuation por fluxo de caixa</span>
  </div>
</div>

<!-- ═══ SECTOR NAV ═══ -->
<nav class="sector-nav">
  <button class="sec-btn active" onclick="showSector('landing',this)">🏠 EASY Invest</button>
  <button class="sec-btn" onclick="showSector('energia',this)">⚡ Energia Elétrica <span class="sec-badge">27</span></button>
  <button class="sec-btn" onclick="showSector('petroleo',this)">🛢️ Petróleo & Gás <span class="sec-badge">12</span></button>
  <button class="sec-btn" onclick="showSector('imobiliario',this)">🏗️ Imobiliário <span class="sec-badge">14</span></button>
  <button class="sec-btn" onclick="showSector('equipamentos',this)">⚙️ Equipamentos <span class="sec-badge">13</span></button>
  <button class="sec-btn" onclick="showSector('saude',this)">🏥 Saúde <span class="sec-badge">18</span></button>
  <button class="sec-btn" onclick="showSector('historico',this)">📚 Histórico DB</button>
</nav>

<!-- ═══════════════════════════════════════════════════
     LANDING PAGE
════════════════════════════════════════════════════ -->
<div id="panel-landing" class="sector-panel active">
  <div class="landing-hero">
    <div style="margin-bottom:16px;"><img src="data:image/png;base64,/9j/4AAQSkZJRgABAgAAAQABAAD/wAARCANIBbADACIAAREBAhEB/9sAQwAIBgYHBgUIBwcHCQkICgwUDQwLCwwZEhMPFB0aHx4dGhwcICQuJyAiLCMcHCg3KSwwMTQ0NB8nOT04MjwuMzQy/9sAQwEJCQkMCwwYDQ0YMiEcITIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIy/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMAAAERAhEAPwDzuiiig+fCiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAoo61NHa3M3+qt5pP91CaV0BDRWhHoWry/c0u9P/AGwb/CrC+FPEDj5dHvP+/dS6sI7yRShJ7Ix6K2f+ES8Q/wDQGu/++KP+ES8Q/wDQHu/++Kn29L+Zfeh+zn2ZjUVs/wDCJeIf+gPd/wDfFH/CJeIf+gPd/wDfFHt6X8y+9B7OfZmNRWz/AMIl4h/6A93/AN8Uf8Il4h/6A93/AN8Ue3pfzL70Hs59mY1FbP8AwiXiH/oD3f8A3xR/wiXiH/oD3f8A3xR7el/MvvQezn2ZjUVs/wDCJeIf+gPd/wDfFH/CJeIf+gPd/wDfFHt6X8y+9B7OfZmNRWz/AMIl4h/6A93/AN8Uf8Il4h/6A93/AN8Ue3pfzL70Hs59mY1FbP8AwiXiH/oD3f8A3xR/wiXiH/oD3f8A3xR7el/MvvQezn2ZjUVs/wDCJeIf+gPd/wDfFH/CJeIf+gPd/wDfFHt6X8y+9B7OfZmNRWz/AMIl4h/6A93/AN8Uf8Il4h/6A93/AN8Ue3pfzL70Hs59mY1FbP8AwiXiH/oD3f8A3xR/wiXiH/oD3f8A3xR7el/MvvQezn2ZjUVs/wDCJeIf+gPd/wDfFH/CJeIf+gPd/wDfFHt6X8y+9B7OfZmNRWz/AMIl4h/6A93/AN8Uf8Il4h/6A93/AN8Ue3pfzL70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54hdbmfdb6eDzKR80nso/r0r2PTdLs9IsktLGBYYV7Dqx9Se5q0qKiBEUKqjAUDAAp1fnGa53Wx8uVaQ7f5n02EwMMOr7y7hRRRXhneFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABWTr3h3T/ENp5F7F84H7uZeHQ+x9PataitqNadGanTdmiJwjNcsldHgfiXwpf+GrnE4821c/u7hB8p9j6H2rBr6UurS3vrWS2uoUlhkGGRxkGvHfGPgWfQWa9sd82nE892h/3vUe/wCdff5NxBDFWo4jSffo/wDgnzuNy6VL36esfyONooor6c8oKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigApQCSAASTwAO9ABJAAJJ4AFes+BfAw09Y9V1SMG8I3QwsP9T7n/a/lXHjsdSwVJ1ar9F1bN8Ph5158sCPwT4BW0EeqavGGuPvQ27DIj929/bt9a9Eoor8wzHMa2Oq+0qPToux9VhsNChDlj94UUUV550hRRRSAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAprIsiMjqGVhggjIIp1FNO2qA8k8beAzp3manpKFrP70sA5MXuP9n+VcBX00QCCCMg9Qa8n8d+BvsJk1bSoj9mPzTQKP8AV/7Q/wBn+VfdZDn/ALS2GxT16Pv5PzPn8wy7lvVpLTqjz2iiivsTxQooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAoorvvh94O/tKZdX1CP/Q4mzDGw/wBaw7n/AGR+tc+KxNPC0nWquyRrRpSqzUI7s1PAHgoQrHrWqRfvT81tC4+6P75Hr6V6RR/Kivy3Msxq46s6k9ui7I+swuGjh4csQooorzjpCiiikAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFIQGBDAEHgg9xS0U07AePePPBZ0iZtT05M2EjZkjA/wBSx/8AZT+lcNX0vNDFcQvDMivHIpV1YZDA9q8P8aeE5PDeo74QzafOSYXPO0/3D7/zFfoHD2de3Sw1d+8tn3/4P5nzmZYH2b9rTWnU5iiiivqzyAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKsWNlPqV9DZ2qF55mCqo/r7Um0tWCVza8H+GZPEmrBHBWyhw07j07KPc17pDDHbwRwwoscUahURRgKB0FZ+gaHb+H9IisYMEr80knd3PU1qV+Z57mzxtbkg/cjt5+f+R9Tl+E9hC8viYUUUV4B6IUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUwCiiigAoooosAUUUUgCiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACqeqaZbaxp01jdpuilGPdT2I9xVyitITcJKUXZomUVJWZ87a5o1zoOrS2FyMlDlHHR17MKzq908a+GF8RaSTCoF9AC0Df3vVT9f514a6NG7I6lXUkMp6g+hr9QybM44+heXxrf/P5nymOwrw9TTZ7DaKKK9g4gooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAr1z4beGfsFj/bF0mLm5XEII+5H6/U/yrh/BXh4+IddRJFP2O3xJOfUdl/E/1r3VVCgAAAAYAHYV8pxNmfsaf1Wm/elv5L/g/kevlWF55e1lstvUWiiivz8+jCiiikAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAyWWOGJ5JXVI0BZmY4AA7mvL9f+KNw07waJEiRKcC4lXLN7gdh9a0vinq8ltpltpkTFftTF5CD1Vccfmf0ryavseHskpYin9ZxCuui/Vni5ljp05eypvXqb7eN/ErMSdXnGfQKB/KnR+OfEsbhxq0zY7MqkH9K56ivrf7MwVreyj9x4/1qv/O/vPU/DPxL+13MdnrUccTOdqXKcLn/AGh2+tejj65r5lr2/wCHurSar4WiEzFprVjAzHqQMFf0I/KvkuIclpYen9Zw6sr6r9T2Mux06svZVHd9Dq6KKK+PPaCi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7z4F/wCRK0v/AK5n/wBCNdDXPeBf+RK0v/rmf/QjXQ1+R5p/vtb/ABP8z7LCfwIei/IKKKK886AooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigDzb4raTJLDZ6tGpZYgYZSOwJyp/PP515dX0rc20N5bSW9xGskMilXRhwRXlmvfC+8gmabRXW4gJyIZGCuvtk8GvueHc4oworC13ZrZng5lgpyn7Wmr9zz2it5vBfiRWIOj3GfbB/rSDwZ4jJx/Y9z+IH+NfWfW6Fr86+9Hj+xqdYv7jCrt/hlpL3niE6gynyLNT82OrsMAflk0aP8ADLV7yZW1HbYwfxZYO5+gHH516tpel2mjWEdlZRCOFPxLHuSe5rwc7zuhSoSpUZc05aadPO56GBwFSdRTmrJF2iiivzk+mCiiikAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAVBeXcFhZTXdy4SGFC7t7Cp68q+Jfib7Tcf2HaPmKFg1ywP3n7L+H8/pXdl+CnjK8aMOu/kjDEV40Kbmzi9d1ebXdYn1CbI8xvkTP3FHQVnUUV+s0KMKFONKCslofH1JupJyluwooorUgKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA958C/8iVpf/XM/wDoRroa57wL/wAiVpf/AFzP/oRroa/I80/32t/if5n2WE/gQ9F+QUUUV550BRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRTAKKKKLisFFFFAwooopAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFUtV1S20bTZr67fbFEM47sewHuaqMXJpITaSuzG8a+J08O6SREwN/cArAv931Y+w/nXhjM0js7sWZiSWJySfWtDXNZude1WW/uj8z8InZFHQCs6v07I8qWBo3n8ct/Ly/rqfK4/FuvO0fhQUUUV7hwBRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQB7z4F/5ErS/+uZ/9CNdDXPeBf8AkStL/wCuZ/8AQjXQ1+R5p/vtb/E/zPssJ/Ah6L8gooorzzoCiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiikJCgkkADqT2piGzTR28Mk0zrHFGpZ3Y8ADvXh3jLxVJ4k1HbEWSwgJEKH+I/3z7mtTx74z/taZtL0+T/QI2/eOP+WzD/2UfrXC193w7kvs0sXXWv2V28/XseDmWO5r0ab06/5BRRRX2B4gUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFAHvPgX/AJErS/8Armf/AEI10Nc94F/5ErS/+uZ/9CNdDX5Hmn++1v8AE/zPssJ/Ah6L8gooorzzoCiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKRmVELOwVVGSScACmgAnAyeMV5V478c/bPM0jSZf8AR/uzzqf9Z/sqf7vv3pnjfx4b/wAzS9JkK2v3ZrgcGX2X/Z/nXn1fZ5DkDk1icStOi/Vnh5hmFr0qXzYUUUV9weCFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAe8+Bf+RK0v/rmf/QjXQ1z3gX/AJErS/8Armf/AEI10Nfkeaf77W/xP8z7LCfwIei/IKKKK886AooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKytd8Q6f4eszPezAMR+7hX78h9h/WrhCU5KMVdsmUkldl+7u7ewtZLm6mWGCMZZ2OAK8c8X+OrjXmazst0GnA9OjTe7e3tWX4k8VX/iW53Tny7ZD+6t1Pyr7n1PvWFX3uTcOxo2r4pXl0XRf5s+fxuZOd6dLbuFFFFfWHjhRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQB7z4F/wCRK0v/AK5n/wBCNdDXPeBf+RK0v/rmf/QjXQ1+R5p/vtb/ABP8z7LCfwIei/IKKKK886AooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiimAUVk634k0zw/B5l9cAORlIU5dvoP615N4j8e6nru+CEmzsjx5UbfM4/wBpv6DivTy/KcRjpfu1aPd7f8H5HJiMZSoL3nr2O28U/EW00sPaaUUurwcGTrHGf/Zj7V5NfX91qV291eTvNM55dzn8B6Cq9FfoOWZPh8BG8VeXd/p2PnMVjamIdnouwUUUV65xhRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAe8+Bf+RK0v/rmf/QjXQ1z3gX/AJErS/8Armf/AEI10Nfkeaf77W/xP8z7LCfwIei/IKKKK886AooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooopgFFYmr+LdE0Xct1fIZh/wAsYvnf8h0/GvP9Z+KV/c7otKgFpGePNkw0n5dB+tejg8qxWLf7qGnd6L7zmrYujR+OWp6bqms6fo1v52oXUcK9gx+ZvoOprzbXvihc3G6DRojbx9PtEgy5+g6D9a4K6uri9nae6nkmlbq8jFiahr7DAcL0KNp4h877dP8Agni4jNpz0paL8SSeea5maaeV5ZXOWd2yT+JqOiivqIxjBcsVZHkttu7CiiiqEFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAe8+Bf8AkStL/wCuZ/8AQjXQ1z3gUf8AFFaX/wBcz/6Ea6HFfkeaf77W/wAT/M+xwn8CHovyCijBowa4DpCijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBowaACijBooAKKMH0NNMiKMs6qB6nFADqKz59d0m2z52p2aEdjMufyzWXdePfDVqOdSWU+kKM39K2hhq1T4IN/IiVSEfidjpKK4C6+K+lx5FpYXU59XIQf1P6VgXvxV1ebItLS1th2JzIf14r0aORZhV2pteuhyzzDDw3l9x69j61lal4k0bSQftuoQRsP4A25vyHNeI3/inXNTBF1qdwyH+BW2L+QxWQeTk8n1Ne3huEqj1r1EvTX/ACOGpnEV/Djf1PVdS+K9pHuXTLGSZu0k52L+Q5ritW8a69rAZJr1ooT/AMsoPkX/ABP4mufor6DC5DgcNqocz7vX/gHm1swr1dG7LyCiiivYSSVkcTdwooopgFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQBpW3iHWLO3S3ttTuYoUGFRHwBUv8AwlWv/wDQYvP+/hrIorllgcLOTlKnFt+SNliKqVlJ/ezX/wCEq1//AKDF5/38NH/CVa//ANBi8/7+Gsiil/Z+E/59R/8AAV/kH1mt/O/vZr/8JVr/AP0GLz/v4aP+Eq1//oMXn/fw1kUUf2fhP+fUf/AV/kH1mt/O/vZr/wDCVa//ANBi8/7+Gj/hKtf/AOgxef8Afw1kUUf2fhP+fUf/AAFf5B9Zrfzv72a//CVa/wD9Bi8/7+Gj/hKtf/6DF5/38NZFFH9n4T/n1H/wFf5B9Zrfzv72a/8AwlWv/wDQYvP+/ho/4SrX/wDoMXn/AH8NZFFH9n4T/n1H/wABX+QfWa387+9mv/wlWv8A/QYvP+/ho/4SrX/+gxef9/DWRRR/Z+E/59R/8BX+QfWa387+9mv/AMJVr/8A0GLz/v4aP+Eq1/8A6DF5/wB/DWRRR/Z+E/59R/8AAV/kH1mt/O/vZr/8JVr/AP0GLz/v4aP+Eq1//oMXn/fw1kUUf2fhP+fUf/AV/kH1mt/O/vZr/wDCVa//ANBi8/7+Gj/hKtf/AOgxef8Afw1kUUf2fhP+fUf/AAFf5B9Zrfzv72a//CVa/wD9Bi8/7+Gj/hKtf/6DF5/38NZFFH9n4T/n1H/wFf5B9Zrfzv72a/8AwlWv/wDQYvP+/ho/4SrX/wDoMXn/AH8NZFFH9n4T/n1H/wABX+QfWa387+9mv/wlWv8A/QYvP+/ho/4SrX/+gxef9/DWRRR/Z+E/59R/8BX+QfWa387+9mv/AMJVr/8A0GLz/v4aP+Eq1/8A6DF5/wB/DWRRR/Z+E/59R/8AAV/kH1mt/O/vZr/8JVr/AP0GLz/v4aP+Eq1//oMXn/fw1kUUf2fhP+fUf/AV/kH1mt/O/vZr/wDCVa//ANBi8/7+Gj/hKtf/AOgxef8Afw1kUUf2fhP+fUf/AAFf5B9Zrfzv72a//CVa/wD9Bi8/7+Gj/hKtf/6DF5/38NZFFH9n4T/n1H/wFf5B9Zrfzv72a/8AwlWv/wDQYvP+/ho/4SrX/wDoMXn/AH8NZFFH9n4T/n1H/wABX+QfWa387+9mv/wlWv8A/QYvP+/ho/4SrX/+gxef9/DWRRR/Z+E/59R/8BX+QfWa387+9mv/AMJVr/8A0GLz/v4aP+Eq1/8A6DF5/wB/DWRRR/Z+E/59R/8AAV/kH1mt/O/vZr/8JVr/AP0GLz/v4aP+Eq1//oMXn/fw1kUUf2fhP+fUf/AV/kH1mt/O/vZr/wDCVa//ANBi8/7+Gj/hKtf/AOgxef8Afw1kUUf2fhP+fUf/AAFf5B9Zrfzv72a//CVa/wD9Bi8/7+Gj/hKtf/6DF5/38NZFFH9n4T/n1H/wFf5B9Zrfzv72a/8AwlWv/wDQYvP+/ho/4SrX/wDoMXn/AH8NZFFH9n4T/n1H/wABX+QfWa387+9mv/wlWv8A/QYvP+/ho/4SrX/+gxef9/DWRRR/Z+E/59R/8BX+QfWa387+9mv/AMJVr/8A0GLz/v4aP+Eq1/8A6DF5/wB/DWRRR/Z+E/59R/8AAV/kH1mt/O/vZr/8JVr/AP0GLz/v4aP+Eq1//oMXn/fw1kUUf2fhP+fUf/AV/kH1mt/O/vZr/wDCVa//ANBi8/7+Gj/hKtf/AOgxef8Afw1kUUf2fhP+fUf/AAFf5B9Zrfzv72a//CVa/wD9Bi8/7+Gj/hKtf/6DF5/38NZFFH9n4T/n1H/wFf5B9Zrfzv72a/8AwlWv/wDQYvP+/ho/4SrX/wDoMXn/AH8NZFFH9n4T/n1H/wABX+QfWa387+9mv/wlWv8A/QYvP+/ho/4SrX/+gxef9/DWRRR/Z+E/59R/8BX+QfWa387+9mv/AMJVr/8A0GLz/v4aP+Eq1/8A6DF5/wB/DWRRR/Z+E/59R/8AAV/kH1mt/O/vZr/8JVr/AP0GLz/v4aP+Eq1//oMXn/fw1kUUf2fhP+fUf/AV/kH1mt/O/vZr/wDCVa//ANBi8/7+Gj/hKtf/AOgxef8Afw1kUUf2fhP+fUf/AAFf5B9Zrfzv72a//CVa/wD9Bi8/7+Gj/hKtf/6DF5/38NZFFH9n4T/n1H/wFf5B9Zrfzv72a/8AwlWv/wDQYvP+/ho/4SrX/wDoMXn/AH8NZFFH9n4T/n1H/wABX+QfWa387+9mv/wlWv8A/QYvP+/ho/4SrX/+gxef9/DWRRR/Z+E/59R/8BX+QfWa387+9mv/AMJVr/8A0GLz/v4aP+Eq1/8A6DF5/wB/DWRRR/Z+E/59R/8AAV/kH1mt/O/vZr/8JVr/AP0GLz/v4aP+Eq1//oMXn/fw1kUUf2fhP+fUf/AV/kH1mt/O/vZr/wDCVa//ANBi8/7+Gj/hKtf/AOgxef8Afw1kUUf2fhP+fUf/AAFf5B9Zrfzv72a//CVa/wD9Bi8/7+Gj/hKtf/6DF5/38NZFFH9n4T/n1H/wFf5B9Zrfzv72a/8AwlWv/wDQYvP+/ho/4SrX/wDoMXn/AH8NZFFH9n4T/n1H/wABX+QfWa387+9mv/wlWv8A/QYvP+/ho/4SrX/+gxef9/DWRRR/Z+E/59R/8BX+QfWa387+9mv/AMJVr/8A0GLz/v4aP+Eq1/8A6DF5/wB/DWRRR/Z+E/59R/8AAV/kH1mt/O/vZr/8JVr/AP0GLz/v4aP+Eq1//oMXn/fw1kUUf2fhP+fUf/AV/kH1mt/O/vZr/wDCVa//ANBi8/7+Gj/hKtf/AOgxef8Afw1kUUf2fhP+fUf/AAFf5B9Zrfzv72a//CVa/wD9Bi8/7+Gj/hKtf/6DF5/38NZFFH9n4T/n1H/wFf5B9Zrfzv72a/8AwlWv/wDQYvP+/ho/4SrX/wDoMXn/AH8NZFFH9n4T/n1H/wABX+QfWa387+9mv/wlWv8A/QYvP+/ho/4SrX/+gxef9/DWRRR/Z+E/59R/8BX+QfWa387+9mv/AMJVr/8A0GLz/v4aP+Eq1/8A6DF5/wB/DWRRR/Z+E/59R/8AAV/kH1mt/O/vZr/8JVr/AP0GLz/v4aP+Eq1//oMXn/fw1kUUf2fhP+fUf/AV/kH1mt/O/vZr/wDCVa//ANBi8/7+Gj/hKtf/AOgxef8Afw1kUUf2fhP+fUf/AAFf5B9Zrfzv72a//CVa/wD9Bi8/7+Gj/hKtf/6DF5/38NZFFH9n4T/n1H/wFf5B9Zrfzv72a/8AwlWv/wDQYvP+/ho/4SrX/wDoMXn/AH8NZFFH9n4T/n1H/wABX+QfWa387+9mv/wlWv8A/QYvP+/ho/4SrX/+gxef9/DWRRR/Z+E/59R/8BX+QfWa387+9mv/AMJVr/8A0GLz/v4aP+Eq1/8A6DF5/wB/DWRRR/Z+E/59R/8AAV/kH1mt/O/vZr/8JVr/AP0GLz/v4aP+Eq1//oMXn/fw1kUUf2fhP+fUf/AV/kH1mt/O/vZr/wDCVa//ANBi8/7+GkPijXmGDq95/wB/TWTRR/Z+E/59R/8AAV/kH1mt/O/vZel1rVJv9ZqV231mb/GqkkskpzJI7/7zE0yitYYejD4YJfJESqzlu2FFFFapJEBRRRTAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigD3r/hSXhv/AJ/tW/7+x/8Axuj/AIUl4b/5/tW/7+x//G69JooPY+q0e35nm3/CkvDf/P8Aat/39j/+N0f8KS8N/wDP9q3/AH9j/wDjdek0UB9Vo9vzPNv+FJeG/wDn+1b/AL+x/wDxuj/hSXhv/n+1b/v7H/8AG69JooD6rR7fmebf8KS8N/8AP9q3/f2P/wCN0f8ACkvDf/P9q3/f2P8A+N16TRQH1Wj2/M82/wCFJeG/+f7Vv+/sf/xuj/hSXhv/AJ/tW/7+x/8AxuvSaKA+q0e35nm3/CkvDf8Az/at/wB/Y/8A43R/wpLw3/z/AGrf9/Y//jdek0UB9Vo9vzPNv+FJeG/+f7Vv+/sf/wAbo/4Ul4b/AOf7Vv8Av7H/APG69JooD6rR7fmebf8ACkvDf/P9q3/f2P8A+N0f8KS8N/8AP9q3/f2P/wCN16TRQH1Wj2/M82/4Ul4b/wCf7Vv+/sf/AMbo/wCFJeG/+f7Vv+/sf/xuvSaKA+q0e35nm3/CkvDf/P8Aat/39j/+N0f8KS8N/wDP9q3/AH9j/wDjdek0UB9Vo9vzPNv+FJeG/wDn+1b/AL+x/wDxuj/hSXhv/n+1b/v7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uj/hSXhv/n+1b/v7H/8AG69JooD6rR7fmebf8KS8N/8AP9q3/f2P/wCN0f8ACkvDf/P9q3/f2P8A+N16TRQH1Wj2/M82/wCFJeG/+f7Vv+/sf/xuj/hSXhv/AJ/tW/7+x/8AxuvSaKA+q0e35nm3/CkvDf8Az/at/wB/Y/8A43R/wpLw3/z/AGrf9/Y//jdek0UB9Vo9vzPNv+FJeG/+f7Vv+/sf/wAbo/4Ul4b/AOf7Vv8Av7H/APG69JooD6rR7fmebf8ACkvDf/P9q3/f2P8A+N0f8KS8N/8AP9q3/f2P/wCN16TRQH1Wj2/M82/4Ul4b/wCf7Vv+/sf/AMbo/wCFJeG/+f7Vv+/sf/xuvSaKA+q0e35nm3/CkvDf/P8Aat/39j/+N0f8KS8N/wDP9q3/AH9j/wDjdek0UB9Vo9vzPNv+FJeG/wDn+1b/AL+x/wDxuj/hSXhv/n+1b/v7H/8AG69JooD6rR7fmebf8KS8N/8AP9q3/f2P/wCN0f8ACkvDf/P9q3/f2P8A+N16TRQH1Wj2/M82/wCFJeG/+f7Vv+/sf/xuj/hSXhv/AJ/tW/7+x/8AxuvSaKA+q0e35nm3/CkvDf8Az/at/wB/Y/8A43R/wpLw3/z/AGrf9/Y//jdek0UB9Vo9vzPNv+FJeG/+f7Vv+/sf/wAbo/4Ul4b/AOf7Vv8Av7H/APG69JooD6rR7fmebf8ACkvDf/P9q3/f2P8A+N0f8KS8N/8AP9q3/f2P/wCN16TRQH1Wj2/M82/4Ul4b/wCf7Vv+/sf/AMbo/wCFJeG/+f7Vv+/sf/xuvSaKA+q0e35nm3/CkvDf/P8Aat/39j/+N0f8KS8N/wDP9q3/AH9j/wDjdek0UB9Vo9vzPNv+FJeG/wDn+1b/AL+x/wDxuj/hSXhv/n+1b/v7H/8AG69JooD6rR7fmFFFFB0BRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFAH/9k=" alt="EASY" style="height:64px;filter:drop-shadow(0 4px 12px rgba(0,0,0,0.5));" onerror="this.style.display='none'"></div>
    <h1>Factor Invest & Valuation B3</h1>
    <p>Plataforma profissional de análise fundamentalista com <strong>Factor Invest</strong>, valuation por <strong>fluxo de caixa (DCF)</strong> e cotações em tempo real para todos os setores da Bolsa Brasileira.</p>
    <div class="hero-badges">
      <span class="hero-badge">⚡ Cotações ao Vivo</span>
      <span class="hero-badge">📊 13 Fatores / 26 pts</span>
      <span class="hero-badge">💰 Valuation DCF</span>
      <span class="hero-badge">📚 Histórico Trimestral</span>
      <span class="hero-badge">🎯 Quadro Decisório</span>
    </div>
  </div>

  <div style="padding:40px 24px;max-width:1100px;margin:0 auto;">
    <h2 style="text-align:center;font-size:22px;font-weight:800;color:var(--green-800);margin-bottom:8px;">Setores Disponíveis</h2>
    <p style="text-align:center;color:var(--slate);font-size:13px;margin-bottom:24px;">Clique em um setor para acessar a análise completa Factor Invest</p>
    <div class="sec-overview-grid">
      <div class="sec-overview-item" onclick="showSector('energia',document.querySelector('[onclick*=energia]'))">
        <div class="soi-icon">⚡</div>
        <div class="soi-name">Energia Elétrica</div>
        <div class="soi-count">27 empresas · 4 sub-setores</div>
        <div class="soi-top">Top: EQPA3 · TAEE3 · CMIG4</div>
      </div>
      <div class="sec-overview-item" onclick="showSector('petroleo',document.querySelector('[onclick*=petroleo]'))">
        <div class="soi-icon">🛢️</div>
        <div class="soi-name">Petróleo & Gás</div>
        <div class="soi-count">12 empresas · 4 sub-setores</div>
        <div class="soi-top">Top: PETR3 · RECV3 · BRAV3</div>
      </div>
      <div class="sec-overview-item" onclick="showSector('imobiliario',document.querySelector('[onclick*=imobiliario]'))">
        <div class="soi-icon">🏗️</div>
        <div class="soi-name">Setor Imobiliário</div>
        <div class="soi-count">14 empresas · 5 sub-setores</div>
        <div class="soi-top">Top: JHSF3 · CYRE3 · EVEN3</div>
      </div>
      <div class="sec-overview-item" onclick="showSector('equipamentos',document.querySelector('[onclick*=equipamentos]'))">
        <div class="soi-icon">⚙️</div>
        <div class="soi-name">Equipamentos Industriais</div>
        <div class="soi-count">13 empresas · 4 sub-setores</div>
        <div class="soi-top">Top: EALT3 · WEGE3 · KEPL3</div>
      </div>
      <div class="sec-overview-item" onclick="showSector('saude',document.querySelector('[onclick*=saude]'))">
        <div class="soi-icon">🏥</div>
        <div class="soi-name">Saúde</div>
        <div class="soi-count">18 empresas · 5 sub-setores</div>
        <div class="soi-top">Top: GMAT3 · RDOR3 · OFSA3</div>
      </div>
      <div class="sec-overview-item" style="background:var(--green-50);border-style:dashed;">
        <div class="soi-icon">🔜</div>
        <div class="soi-name">Novos Setores</div>
        <div class="soi-count">Em desenvolvimento</div>
        <div class="soi-top" style="color:var(--amber);">Bancos · Varejo · Mineração...</div>
      </div>
    </div>
  </div>

  <div style="background:var(--green-50);padding:36px 24px 44px;border-top:2px solid var(--green-100);">
    <div class="features-section" style="padding:0;max-width:1100px;margin:0 auto;">
      <h2 style="font-size:22px;font-weight:800;color:var(--green-800);text-align:center;margin-bottom:8px;">Por que o EASY Factor Invest?</h2>
      <p style="text-align:center;color:var(--slate);margin-bottom:28px;font-size:13px;">Análise profissional com metodologia transparente e dados em tempo real</p>
      <div class="features-grid">
        <div class="feature-card">
          <div class="fc-icon">🔬</div>
          <h3>13 Fatores · 26 Pontos</h3>
          <p>ROIC, ROA, ROE, P/L, EV/EBIT, Dividend Yield, P/FCO, P/Book, Dívida, Momentum e mais. Metodologia quantitativa e transparente.</p>
        </div>
        <div class="feature-card">
          <div class="fc-icon">⚡</div>
          <h3>Cotações em Tempo Real</h3>
          <p>Integração com Brapi.dev e Yahoo Finance para cotações ao vivo. Upside vs Preço Justo calculado automaticamente a cada atualização.</p>
        </div>
        <div class="feature-card">
          <div class="fc-icon">💰</div>
          <h3>Valuation DCF</h3>
          <p>Projeções fundamentalistas com WACC setorial, cenários pessimista/realista/otimista e preço justo por fluxo de caixa descontado.</p>
        </div>
        <div class="feature-card">
          <div class="fc-icon">📚</div>
          <h3>Histórico Trimestral</h3>
          <p>Banco de dados local para salvar e comparar indicadores ao longo dos trimestres. Identifique melhoras estruturais vs resultados esporádicos.</p>
        </div>
        <div class="feature-card">
          <div class="fc-icon">🎯</div>
          <h3>Quadro Decisório</h3>
          <p>Recomendações integradas: Factor Invest + Saúde Financeira + DCF + Valuation + Momentum. Compra Forte, Compra, Neutro ou Venda.</p>
        </div>
        <div class="feature-card">
          <div class="fc-icon">📊</div>
          <h3>Tabela Mestra & Heatmap</h3>
          <p>Comparativo completo com todos os indicadores. Heatmap visual por fator para identificar rapidamente as melhores oportunidades.</p>
        </div>
      </div>
    </div>
  </div>

  <div style="padding:44px 24px;">
    <h2 style="text-align:center;font-size:22px;font-weight:800;color:var(--green-800);margin-bottom:8px;">Planos de Assinatura</h2>
    <p style="text-align:center;color:var(--slate);margin-bottom:28px;font-size:13px;">Acesso à plataforma completa de análise Factor Invest</p>
    <div class="plans-grid">
      <div class="plan-card">
        <div class="plan-name">Mensal</div>
        <div class="plan-price">R$79<span>/mês</span></div>
        <div class="plan-period">Faturado mensalmente</div>
        <ul class="plan-features">
          <li>Acesso a 5 setores analisados</li>
          <li>Factor Invest completo (13 fatores)</li>
          <li>Cotações ao vivo</li>
          <li>Quadro decisório por empresa</li>
          <li>Projeções DCF e cenários</li>
        </ul>
        <button class="plan-cta">Assinar Agora</button>
      </div>
      <div class="plan-card featured">
        <div class="plan-name">Trimestral</div>
        <div class="plan-price">R$59<span>/mês</span></div>
        <div class="plan-period">R$177 a cada 3 meses · Economize 25%</div>
        <ul class="plan-features">
          <li>Tudo do plano mensal</li>
          <li>Histórico trimestral completo</li>
          <li>Novos setores assim que disponíveis</li>
          <li>Alertas de oportunidades</li>
          <li>Relatórios de atualização trimestral</li>
          <li>Suporte prioritário</li>
        </ul>
        <button class="plan-cta">Assinar — Melhor Valor</button>
      </div>
      <div class="plan-card">
        <div class="plan-name">Anual</div>
        <div class="plan-price">R$49<span>/mês</span></div>
        <div class="plan-period">R$588/ano · Economize 38%</div>
        <ul class="plan-features">
          <li>Tudo do plano trimestral</li>
          <li>Todos os setores da B3</li>
          <li>Análise individual por empresa</li>
          <li>Dashboard personalizado</li>
          <li>Comparativo cross-setorial</li>
          <li>Acesso antecipado a novos recursos</li>
        </ul>
        <button class="plan-cta">Assinar Anual</button>
      </div>
    </div>
  </div>
</div>

<!-- ═══════════════════════════════════════════════════
     ENERGIA ELÉTRICA
════════════════════════════════════════════════════ -->
<div id="panel-energia" class="sector-panel">
  <div class="sec-header">
    <div>
      <div class="sh-badge">⚡ Factor Invest · B3</div>
      <h2>Energia Elétrica — Análise Setorial</h2>
      <div class="sh-sub">27 empresas · 13 fatores · 4 sub-setores · <span class="data-date">Base: Market View 2026</span></div>
    </div>
    <div class="sec-header-right">
      <div style="font-size:11px;color:rgba(255,255,255,0.6);">Cotações via Brapi.dev</div>
    </div>
  </div>
  <div class="summary-bar">
    <div class="summary-card"><span class="sc-label">🏆 Top Compra Forte</span><span class="sc-value">EQPA3 · TAEE3 · CMIG4</span><span class="sc-sub">20pts · 20pts · 20pts</span></div>
    <div class="summary-card"><span class="sc-label">📈 Maiores Upsides</span><span class="sc-value" id="EN_topUpside">Calculando...</span><span class="sc-sub">vs. Preço Justo — atualiza ao vivo</span></div>
    <div class="summary-card"><span class="sc-label">💰 Maior Dividend Yield</span><span class="sc-value">CMIG4 13.7% · ENGI11 10.4%</span><span class="sc-sub">DY base — dados fundamentalistas</span></div>
    <div class="summary-card"><span class="sc-label">📊 Empresas Analisadas</span><span class="sc-value">27 Empresas · 4 Sub-Setores</span><span class="sc-sub">Transmissão · Distribuição · Integrada · Geração</span></div>
  </div>
  <nav class="tab-nav" id="EN_tabs">
    <button class="tab-btn active" onclick="showTab('EN','ranking',this)">🏆 Ranking do Setor</button>
    <button class="tab-btn" onclick="showTab('EN','factor',this)">🔍 Factor Detalhado</button>
    <button class="tab-btn" onclick="showTab('EN','mestra',this)">📊 Tabela Mestra</button>
    <button class="tab-btn" onclick="showTab('EN','projecoes',this)">💰 Projeções DCF</button>
    <button class="tab-btn" onclick="showTab('EN','analise',this)">📋 Análise Detalhada</button>
    <button class="tab-btn" onclick="showTab('EN','decisorio',this)">🎯 Quadro Decisório</button>
  </nav>
  <section id="EN_tab-ranking" class="section active">
    <div class="section-header"><h3>🏆 Ranking Factor Invest — Energia Elétrica B3</h3><p>Ordenado por Pontuação Factor Invest. Preço Atual e Upside FV atualizam automaticamente ao vivo.</p></div>
    <div class="table-wrap"><table><thead><tr><th>#</th><th>Ticker</th><th>Nome</th><th>Sub-Setor</th><th>Preço Atual</th><th>P. Justo</th><th>Classif.</th><th>Upside FV</th><th>ROIC</th><th>ROA</th><th>ROE</th><th>P/L</th><th>EV/EBIT</th><th>Div.Yield</th><th>Dív/Ativo</th><th>Ret. 1 Ano</th><th>Veredicto</th><th>Pontuação</th></tr></thead><tbody id="EN_rankingTbody"></tbody></table>
    <div class="legend"><span class="legend-item"><span class="live-dot"></span> Preço ao vivo (Brapi.dev)</span><span class="legend-item"><span class="legend-dot" style="background:var(--green-100);border:1px solid var(--green-600)"></span> Compra Forte</span><span class="legend-item"><span class="legend-dot" style="background:var(--amber-bg);border:1px solid var(--amber)"></span> Neutro</span><span class="legend-item"><span class="legend-dot" style="background:var(--red-bg);border:1px solid var(--red)"></span> Venda/Evitar</span></div></div>
  </section>
  <section id="EN_tab-factor" class="section"><div class="section-header"><h3>🔍 Factor Invest Detalhado — Heatmap por Sub-Setor</h3><p>🟢 Forte (2pts) · 🟡 Neutro (1pt) · 🔴 Fraco (0pt)</p></div><div id="EN_factorContent"></div><div class="method-box"><strong>Metodologia (13 fatores / 26 pontos):</strong> ROIC >10%=2|6-10%=1|&lt;6%=0 · ROA >6%=2|3-6%=1|&lt;3%=0 · ROE >15%=2|8-15%=1|&lt;8%=0 · P/L &lt;10x=2|10-20x=1|>20x=0 · EV/EBIT &lt;8x=2|8-15x=1|>15x=0 · DY >6%=2|3-6%=1|&lt;3%=0 · P/FCO &lt;10x=2|10-20x=1|>20x=0 · P/Book &lt;1.5x=2|1.5-3x=1|>3x=0 · Dív/Ativo &lt;40%=2|40-65%=1|>65%=0 · Cresc.Dívida &lt;5%=2|5-20%=1|>20%=0 · Upside FV >15%=2|5-15%=1|&lt;5%=0 · Classif. Pechincha/Barato=2|Justo=1|Caro=0 · Momentum 1A >30%=2|10-30%=1|&lt;10%=0</div></section>
  <section id="EN_tab-mestra" class="section"><div class="section-header"><h3>📊 Tabela Mestra — Comparativo Completo</h3><p>Todos os indicadores para as 27 empresas do setor. Preço Atual e Upside atualizam ao vivo.</p></div><div class="table-wrap"><table id="EN_mestraTable"><thead id="EN_mestraThead"></thead><tbody id="EN_mestraTbody"></tbody></table></div></section>
  <section id="EN_tab-projecoes" class="section"><div class="section-header"><h3>💰 Projeções Fundamentalistas — DCF & Cenários</h3><p>WACC setorial: 9.0% (Transmissão) / 9.5% (Distribuição) / 10.0% (Integrada/Geração). Retornos calculados sobre preço ao vivo.</p></div><div class="method-box"><strong>Cenários:</strong> Pessimista = PJ −20% · Realista = PJ do modelo · Otimista = PJ +20%</div><div class="proj-grid" id="EN_projContent"></div></section>
  <section id="EN_tab-analise" class="section"><div class="section-header"><h3>📋 Análise Detalhada — Por Empresa e Sub-Setor</h3><p>Pontos positivos, negativos, fluxo de caixa, valuation e estratégia para cada empresa.</p></div><div class="analise-grid" id="EN_analiseContent"></div></section>
  <section id="EN_tab-decisorio" class="section"><div class="section-header"><h3>🎯 Quadro Decisório Final — Por Sub-Setor</h3><p>Ranking integrado: Factor Invest + Saúde Financeira + DCF + Valuation + Momento. Preço × FV atualiza ao vivo.</p></div><div id="EN_decisorioContent"></div><div class="aviso-box">⚠️ Esta análise tem caráter educacional e informativo. Não constitui recomendação de investimento.</div></section>
  <div class="site-footer">Factor Invest — Energia Elétrica B3 · Base: Market View 2026 · Cotações ao vivo via Brapi.dev · Material educacional.</div>
</div>

<!-- ═══════════════════════════════════════════════════
     PETRÓLEO & GÁS
════════════════════════════════════════════════════ -->
<div id="panel-petroleo" class="sector-panel">
  <div class="sec-header">
    <div>
      <div class="sh-badge">🛢️ Factor Invest · B3</div>
      <h2>Petróleo, Gás e Biocombustíveis — Análise Setorial</h2>
      <div class="sh-sub">12 empresas · 13 fatores · 4 sub-setores · <span class="data-date">Base: Market View 2026</span></div>
    </div>
  </div>
  <div class="summary-bar">
    <div class="summary-card"><span class="sc-label">🏆 Top Compra Forte</span><span class="sc-value">PETR3 · RECV3 · BRAV3</span><span class="sc-sub">24pts · 18pts · 18pts</span></div>
    <div class="summary-card"><span class="sc-label">📈 Maiores Upsides</span><span class="sc-value" id="PET_topUpside">Calculando...</span><span class="sc-sub">vs. Preço Justo — atualiza ao vivo</span></div>
    <div class="summary-card"><span class="sc-label">💰 Maior Dividend Yield</span><span class="sc-value">RECV3 14.2% · PETR3 5.8%</span><span class="sc-sub">DY base — dados fundamentalistas</span></div>
    <div class="summary-card"><span class="sc-label">📊 Empresas Analisadas</span><span class="sc-value">12 Empresas · 4 Sub-Setores</span><span class="sc-sub">E&P · Distribuição · Refino · Serviços</span></div>
  </div>
  <nav class="tab-nav">
    <button class="tab-btn active" onclick="showTab('PET','ranking',this)">🏆 Ranking do Setor</button>
    <button class="tab-btn" onclick="showTab('PET','factor',this)">🔍 Factor Detalhado</button>
    <button class="tab-btn" onclick="showTab('PET','mestra',this)">📊 Tabela Mestra</button>
    <button class="tab-btn" onclick="showTab('PET','projecoes',this)">💰 Projeções DCF</button>
    <button class="tab-btn" onclick="showTab('PET','analise',this)">📋 Análise Detalhada</button>
    <button class="tab-btn" onclick="showTab('PET','decisorio',this)">🎯 Quadro Decisório</button>
  </nav>
  <section id="PET_tab-ranking" class="section active"><div class="section-header"><h3>🏆 Ranking Factor Invest — Petróleo, Gás & Biocombustíveis B3</h3><p>Ordenado por Pontuação Factor Invest. Preço Atual e Upside FV atualizam automaticamente ao vivo.</p></div><div class="table-wrap"><table><thead><tr><th>#</th><th>Ticker</th><th>Nome</th><th>Sub-Setor</th><th>Preço Atual</th><th>P. Justo</th><th>Classif.</th><th>Upside FV</th><th>ROIC</th><th>ROA</th><th>ROE</th><th>P/L</th><th>EV/EBIT</th><th>Div.Yield</th><th>Dív/Ativo</th><th>Ret. 1 Ano</th><th>Veredicto</th><th>Pontuação</th></tr></thead><tbody id="PET_rankingTbody"></tbody></table><div class="legend"><span class="legend-item"><span class="live-dot"></span> Preço ao vivo</span></div></div></section>
  <section id="PET_tab-factor" class="section"><div class="section-header"><h3>🔍 Factor Invest Detalhado — Heatmap por Sub-Setor</h3><p>🟢 Forte (2pts) · 🟡 Neutro (1pt) · 🔴 Fraco (0pt)</p></div><div id="PET_factorContent"></div><div class="method-box"><strong>Metodologia (13 fatores / 26 pontos):</strong> ROIC >10%=2|6-10%=1|&lt;6%=0 · ROA >6%=2|3-6%=1|&lt;3%=0 · ROE >15%=2|8-15%=1|&lt;8%=0 · P/L &lt;10x=2|10-20x=1|>20x=0 · EV/EBIT &lt;8x=2|8-15x=1|>15x=0 · DY >6%=2|3-6%=1|&lt;3%=0 · P/FCO &lt;10x=2|10-20x=1|>20x=0 · P/Book &lt;1.5x=2|1.5-3x=1|>3x=0 · Dív/Ativo &lt;40%=2|40-65%=1|>65%=0 · Cresc.Dívida &lt;5%=2|5-20%=1|>20%=0 · Upside FV >15%=2|5-15%=1|&lt;5%=0 · Classif. Pechincha/Barato=2|Justo=1|Caro=0 · Momentum 1A >30%=2|10-30%=1|&lt;10%=0</div></section>
  <section id="PET_tab-mestra" class="section"><div class="section-header"><h3>📊 Tabela Mestra — Comparativo Completo</h3><p>Todos os indicadores. Preço Atual e Upside atualizam ao vivo.</p></div><div class="table-wrap"><table><thead id="PET_mestraThead"></thead><tbody id="PET_mestraTbody"></tbody></table></div></section>
  <section id="PET_tab-projecoes" class="section"><div class="section-header"><h3>💰 Projeções Fundamentalistas — DCF & Cenários</h3><p>WACC setorial: 9.5% (E&P) / 9.0% (Distribuição) / 10.5% (Serviços). Retornos sobre preço ao vivo.</p></div><div class="method-box"><strong>Cenários:</strong> Pessimista = PJ −20% · Realista = PJ do modelo · Otimista = PJ +20%</div><div class="proj-grid" id="PET_projContent"></div></section>
  <section id="PET_tab-analise" class="section"><div class="section-header"><h3>📋 Análise Detalhada — Por Empresa e Sub-Setor</h3><p>Pontos positivos, negativos, fluxo de caixa, valuation e estratégia para cada empresa.</p></div><div class="analise-grid" id="PET_analiseContent"></div></section>
  <section id="PET_tab-decisorio" class="section"><div class="section-header"><h3>🎯 Quadro Decisório Final — Por Sub-Setor</h3><p>Ranking integrado: Factor + Saúde + DCF + Valuation + Momento. Preço × FV ao vivo.</p></div><div id="PET_decisorioContent"></div><div class="aviso-box">⚠️ Esta análise tem caráter educacional e informativo. Não constitui recomendação de investimento.</div></section>
  <div class="site-footer">Factor Invest — Petróleo, Gás & Biocombustíveis B3 · Base: Market View 2026 · Material educacional.</div>
</div>

<!-- ═══════════════════════════════════════════════════
     IMOBILIÁRIO
════════════════════════════════════════════════════ -->
<div id="panel-imobiliario" class="sector-panel">
  <div class="sec-header">
    <div>
      <div class="sh-badge">🏗️ Factor Invest · B3</div>
      <h2>Setor Imobiliário — Construção & Incorporações</h2>
      <div class="sh-sub">14 empresas · 13 fatores · 5 sub-setores · <span class="data-date">Base: Market View 2026</span></div>
    </div>
  </div>
  <div class="summary-bar">
    <div class="summary-card"><span class="sc-label">🏆 Top Compra Forte</span><span class="sc-value">JHSF3 · CYRE3 · EVEN3</span><span class="sc-sub">Maiores pontuações Factor</span></div>
    <div class="summary-card"><span class="sc-label">📈 Maiores Upsides</span><span class="sc-value" id="IMO_topUpside">Calculando...</span><span class="sc-sub">vs. Preço Justo — atualiza ao vivo</span></div>
    <div class="summary-card"><span class="sc-label">💰 Maior Dividend Yield</span><span class="sc-value">DIRR3 23.1% · EVEN3 18.1%</span><span class="sc-sub">DY base — dados fundamentalistas</span></div>
    <div class="summary-card"><span class="sc-label">📊 Empresas Analisadas</span><span class="sc-value">14 Empresas · 5 Sub-Setores</span><span class="sc-sub">MCMV · Média/Alta · Luxo · Shopping · Reestruct.</span></div>
  </div>
  <nav class="tab-nav">
    <button class="tab-btn active" onclick="showTab('IMO','ranking',this)">🏆 Ranking do Setor</button>
    <button class="tab-btn" onclick="showTab('IMO','factor',this)">🔍 Factor Detalhado</button>
    <button class="tab-btn" onclick="showTab('IMO','mestra',this)">📊 Tabela Mestra</button>
    <button class="tab-btn" onclick="showTab('IMO','projecoes',this)">💰 Projeções DCF</button>
    <button class="tab-btn" onclick="showTab('IMO','analise',this)">📋 Análise Detalhada</button>
    <button class="tab-btn" onclick="showTab('IMO','decisorio',this)">🎯 Quadro Decisório</button>
  </nav>
  <section id="IMO_tab-ranking" class="section active"><div class="section-header"><h3>🏆 Ranking Factor Invest — Setor Imobiliário B3</h3><p>Ordenado por Pontuação Factor Invest. Preço Atual e Upside FV atualizam ao vivo.</p></div><div class="table-wrap"><table><thead><tr><th>#</th><th>Ticker</th><th>Nome</th><th>Sub-Setor</th><th>Preço Atual</th><th>P. Justo</th><th>Classif.</th><th>Upside FV</th><th>ROIC</th><th>ROA</th><th>ROE</th><th>P/L</th><th>EV/EBIT</th><th>Div.Yield</th><th>Dív/Ativo</th><th>Veredicto</th><th>Pontuação</th></tr></thead><tbody id="IMO_rankingTbody"></tbody></table><div class="legend"><span class="legend-item"><span class="live-dot"></span> Preço ao vivo</span></div></div></section>
  <section id="IMO_tab-factor" class="section"><div class="section-header"><h3>🔍 Factor Invest Detalhado — Heatmap por Sub-Setor</h3><p>🟢 Forte (2pts) · 🟡 Neutro (1pt) · 🔴 Fraco (0pt)</p></div><div id="IMO_factorContent"></div></section>
  <section id="IMO_tab-mestra" class="section"><div class="section-header"><h3>📊 Tabela Mestra — Comparativo Completo</h3><p>Todos os indicadores. Preço Atual e Upside atualizam ao vivo.</p></div><div class="table-wrap"><table><thead id="IMO_mestraThead"></thead><tbody id="IMO_mestraTbody"></tbody></table></div></section>
  <section id="IMO_tab-projecoes" class="section"><div class="section-header"><h3>💰 Projeções Fundamentalistas — DCF & Cenários</h3><p>WACC setorial: 11-12% (MCMV) / 10-11% (Alta Renda). Retornos sobre preço ao vivo.</p></div><div class="method-box"><strong>Cenários:</strong> Pessimista = PJ −20% · Realista = PJ do modelo · Otimista = PJ +20%</div><div class="proj-grid" id="IMO_projContent"></div></section>
  <section id="IMO_tab-analise" class="section"><div class="section-header"><h3>📋 Análise Detalhada — Por Empresa e Sub-Setor</h3><p>Pontos positivos, negativos, fluxo de caixa, valuation e estratégia para cada empresa.</p></div><div class="analise-grid" id="IMO_analiseContent"></div></section>
  <section id="IMO_tab-decisorio" class="section"><div class="section-header"><h3>🎯 Quadro Decisório Final — Por Sub-Setor</h3><p>Ranking integrado. Preço × FV ao vivo.</p></div><div id="IMO_decisorioContent"></div><div class="aviso-box">⚠️ Esta análise tem caráter educacional e informativo. Não constitui recomendação de investimento.</div></section>
  <div class="site-footer">Factor Invest — Setor Imobiliário B3 · Base: Market View 2026 · Material educacional.</div>
</div>

<!-- ═══════════════════════════════════════════════════
     EQUIPAMENTOS INDUSTRIAIS
════════════════════════════════════════════════════ -->
<div id="panel-equipamentos" class="sector-panel">
  <div class="sec-header">
    <div>
      <div class="sh-badge">⚙️ Factor Invest · B3</div>
      <h2>Equipamentos Industriais — Análise Setorial</h2>
      <div class="sh-sub">13 empresas · 13 fatores · 4 sub-setores · <span class="data-date">Base: Market View 2026</span></div>
    </div>
  </div>
  <div class="summary-bar">
    <div class="summary-card"><span class="sc-label">🏆 Top Compra Forte</span><span class="sc-value">EALT3 · WEGE3 · KEPL3</span><span class="sc-sub">24pts · 22pts · 20pts</span></div>
    <div class="summary-card"><span class="sc-label">📈 Maiores Upsides</span><span class="sc-value" id="EQ_topUpside">Calculando...</span><span class="sc-sub">vs. Preço Justo — atualiza ao vivo</span></div>
    <div class="summary-card"><span class="sc-label">💰 Maior Dividend Yield</span><span class="sc-value">EALT3 9.3% · SHUL4 8.5%</span><span class="sc-sub">DY base — dados fundamentalistas</span></div>
    <div class="summary-card"><span class="sc-label">📊 Empresas Analisadas</span><span class="sc-value">13 Empresas · 4 Sub-Setores</span><span class="sc-sub">Componentes · Agro · Automação · Autopeças</span></div>
  </div>
  <nav class="tab-nav">
    <button class="tab-btn active" onclick="showTab('EQ','ranking',this)">🏆 Ranking do Setor</button>
    <button class="tab-btn" onclick="showTab('EQ','factor',this)">🔍 Factor Detalhado</button>
    <button class="tab-btn" onclick="showTab('EQ','mestra',this)">📊 Tabela Mestra</button>
    <button class="tab-btn" onclick="showTab('EQ','projecoes',this)">💰 Projeções DCF</button>
    <button class="tab-btn" onclick="showTab('EQ','analise',this)">📋 Análise Detalhada</button>
    <button class="tab-btn" onclick="showTab('EQ','decisorio',this)">🎯 Quadro Decisório</button>
  </nav>
  <section id="EQ_tab-ranking" class="section active"><div class="section-header"><h3>🏆 Ranking Factor Invest — Equipamentos Industriais B3</h3><p>Ordenado por Pontuação Factor Invest. Preço Atual e Upside FV atualizam ao vivo.</p></div><div class="table-wrap"><table><thead><tr><th>#</th><th>Ticker</th><th>Nome</th><th>Sub-Setor</th><th>Preço Atual</th><th>P. Justo</th><th>Classif.</th><th>Upside FV</th><th>ROIC</th><th>ROA</th><th>ROE</th><th>P/L</th><th>EV/EBIT</th><th>Div.Yield</th><th>Dív/Ativo</th><th>Veredicto</th><th>Pontuação</th></tr></thead><tbody id="EQ_rankingTbody"></tbody></table><div class="legend"><span class="legend-item"><span class="live-dot"></span> Preço ao vivo</span></div></div></section>
  <section id="EQ_tab-factor" class="section"><div class="section-header"><h3>🔍 Factor Invest Detalhado — Heatmap por Sub-Setor</h3><p>🟢 Forte (2pts) · 🟡 Neutro (1pt) · 🔴 Fraco (0pt)</p></div><div id="EQ_factorContent"></div></section>
  <section id="EQ_tab-mestra" class="section"><div class="section-header"><h3>📊 Tabela Mestra — Comparativo Completo</h3><p>Todos os indicadores. Preço Atual e Upside atualizam ao vivo.</p></div><div class="table-wrap"><table><thead id="EQ_mestraThead"></thead><tbody id="EQ_mestraTbody"></tbody></table></div></section>
  <section id="EQ_tab-projecoes" class="section"><div class="section-header"><h3>💰 Projeções Fundamentalistas — DCF & Cenários</h3><p>WACC setorial: 10-11% (Ind.) / 11% (Agro). Retornos sobre preço ao vivo.</p></div><div class="method-box"><strong>Cenários:</strong> Pessimista = PJ −20% · Realista = PJ do modelo · Otimista = PJ +20%</div><div class="proj-grid" id="EQ_projContent"></div></section>
  <section id="EQ_tab-analise" class="section"><div class="section-header"><h3>📋 Análise Detalhada — Por Empresa e Sub-Setor</h3><p>Pontos positivos, negativos, fluxo de caixa, valuation e estratégia para cada empresa.</p></div><div class="analise-grid" id="EQ_analiseContent"></div></section>
  <section id="EQ_tab-decisorio" class="section"><div class="section-header"><h3>🎯 Quadro Decisório Final — Por Sub-Setor</h3><p>Ranking integrado. Preço × FV ao vivo.</p></div><div id="EQ_decisorioContent"></div><div class="aviso-box">⚠️ Esta análise tem caráter educacional e informativo. Não constitui recomendação de investimento.</div></section>
  <div class="site-footer">Factor Invest — Equipamentos Industriais B3 · Base: Market View 2026 · Material educacional.</div>
</div>

<!-- ═══════════════════════════════════════════════════
     SAÚDE
════════════════════════════════════════════════════ -->
<div id="panel-saude" class="sector-panel">
  <div class="sec-header">
    <div>
      <div class="sh-badge">🏥 Factor Invest · B3</div>
      <h2>Saúde — Análise Setorial</h2>
      <div class="sh-sub">18 empresas · 13 fatores · 5 sub-setores · <span class="data-date">Base: Market View 2026</span></div>
    </div>
  </div>
  <div class="summary-bar">
    <div class="summary-card"><span class="sc-label">🏆 Top Compra Forte</span><span class="sc-value">GMAT3 · RDOR3 · OFSA3</span><span class="sc-sub">22pts · 22pts · 21pts</span></div>
    <div class="summary-card"><span class="sc-label">📈 Maiores Upsides</span><span class="sc-value" id="SAU_topUpside">Calculando...</span><span class="sc-sub">vs. Preço Justo — atualiza ao vivo</span></div>
    <div class="summary-card"><span class="sc-label">💰 Maior Dividend Yield</span><span class="sc-value">RDOR3 11.0% · FLRY3 10.8%</span><span class="sc-sub">DY base — dados fundamentalistas</span></div>
    <div class="summary-card"><span class="sc-label">📊 Empresas Analisadas</span><span class="sc-value">18 Empresas · 5 Sub-Setores</span><span class="sc-sub">Farmácias · Hospitais · Diagnóstico · Odonto · Planos</span></div>
  </div>
  <nav class="tab-nav">
    <button class="tab-btn active" onclick="showTab('SAU','ranking',this)">🏆 Ranking do Setor</button>
    <button class="tab-btn" onclick="showTab('SAU','factor',this)">🔍 Factor Detalhado</button>
    <button class="tab-btn" onclick="showTab('SAU','mestra',this)">📊 Tabela Mestra</button>
    <button class="tab-btn" onclick="showTab('SAU','projecoes',this)">💰 Projeções DCF</button>
    <button class="tab-btn" onclick="showTab('SAU','analise',this)">📋 Análise Detalhada</button>
    <button class="tab-btn" onclick="showTab('SAU','decisorio',this)">🎯 Quadro Decisório</button>
  </nav>
  <section id="SAU_tab-ranking" class="section active"><div class="section-header"><h3>🏆 Ranking Factor Invest — Saúde B3</h3><p>Ordenado por Pontuação Factor Invest. Preço Atual e Upside FV atualizam ao vivo.</p></div><div class="table-wrap"><table><thead><tr><th>#</th><th>Ticker</th><th>Nome</th><th>Sub-Setor</th><th>Preço Atual</th><th>P. Justo</th><th>Classif.</th><th>Upside FV</th><th>ROIC</th><th>ROA</th><th>ROE</th><th>P/L</th><th>EV/EBIT</th><th>Div.Yield</th><th>Dív/Ativo</th><th>Ret. 1 Ano</th><th>Veredicto</th><th>Pontuação</th></tr></thead><tbody id="SAU_rankingTbody"></tbody></table><div class="legend"><span class="legend-item"><span class="live-dot"></span> Preço ao vivo</span></div></div></section>
  <section id="SAU_tab-factor" class="section"><div class="section-header"><h3>🔍 Factor Invest Detalhado — Heatmap por Sub-Setor</h3><p>🟢 Forte (2pts) · 🟡 Neutro (1pt) · 🔴 Fraco (0pt)</p></div><div id="SAU_factorContent"></div></section>
  <section id="SAU_tab-mestra" class="section"><div class="section-header"><h3>📊 Tabela Mestra — Comparativo Completo</h3><p>Todos os indicadores. Preço Atual e Upside atualizam ao vivo.</p></div><div class="table-wrap"><table><thead id="SAU_mestraThead"></thead><tbody id="SAU_mestraTbody"></tbody></table></div></section>
  <section id="SAU_tab-projecoes" class="section"><div class="section-header"><h3>💰 Projeções Fundamentalistas — DCF & Cenários</h3><p>WACC setorial: ~10% (Saúde premium estrutural). Retornos sobre preço ao vivo.</p></div><div class="method-box"><strong>Cenários:</strong> Pessimista = PJ −20% · Realista = PJ do modelo · Otimista = PJ +20%</div><div class="proj-grid" id="SAU_projContent"></div></section>
  <section id="SAU_tab-analise" class="section"><div class="section-header"><h3>📋 Análise Detalhada — Por Empresa e Sub-Setor</h3><p>Pontos positivos, negativos, fluxo de caixa, valuation e estratégia para cada empresa.</p></div><div class="analise-grid" id="SAU_analiseContent"></div></section>
  <section id="SAU_tab-decisorio" class="section"><div class="section-header"><h3>🎯 Quadro Decisório Final — Por Sub-Setor</h3><p>Ranking integrado. Preço × FV ao vivo.</p></div><div id="SAU_decisorioContent"></div><div class="aviso-box">⚠️ Esta análise tem caráter educacional e informativo. Não constitui recomendação de investimento.</div></section>
  <div class="site-footer">Factor Invest — Saúde B3 · Base: Market View 2026 · Material educacional.</div>
</div>

<!-- ═══════════════════════════════════════════════════
     HISTÓRICO DB
════════════════════════════════════════════════════ -->
<div id="panel-historico" class="sector-panel">
  <div class="sec-header">
    <div>
      <div class="sh-badge">📚 Banco de Dados · Factor Invest</div>
      <h2>Histórico Trimestral — Factor Invest & Valuation</h2>
      <div class="sh-sub">Registre e compare indicadores ao longo dos trimestres para identificar tendências estruturais</div>
    </div>
  </div>
  <div style="padding:20px;">
    <div class="hist-panel">
      <div class="hist-header">
        <span>📥 Registrar Snapshot Trimestral</span>
        <div class="hist-controls">
          <select id="hist_sector">
            <option value="EN">⚡ Energia Elétrica</option>
            <option value="PET">🛢️ Petróleo & Gás</option>
            <option value="IMO">🏗️ Imobiliário</option>
            <option value="EQ">⚙️ Equipamentos</option>
            <option value="SAU">🏥 Saúde</option>
          </select>
          <select id="hist_ticker_select" style="min-width:120px;">
            <option>Selecionar empresa...</option>
          </select>
          <input type="text" id="hist_quarter" placeholder="Ex: 4T2025" style="width:90px;">
          <button class="hist-save-btn" onclick="saveHistorySnapshot()">💾 Salvar Snapshot</button>
        </div>
      </div>
      <div class="hist-body">
        <div style="margin-bottom:16px;">
          <label style="font-size:12px;font-weight:600;color:var(--green-800);margin-right:10px;">🔍 Filtrar por:</label>
          <select id="hist_filter_sector" onchange="renderHistory()" style="font-size:12px;padding:4px 8px;border:1px solid var(--green-100);border-radius:6px;margin-right:8px;">
            <option value="">Todos os Setores</option>
            <option value="EN">Energia Elétrica</option>
            <option value="PET">Petróleo & Gás</option>
            <option value="IMO">Imobiliário</option>
            <option value="EQ">Equipamentos</option>
            <option value="SAU">Saúde</option>
          </select>
          <select id="hist_filter_ticker" onchange="renderHistory()" style="font-size:12px;padding:4px 8px;border:1px solid var(--green-100);border-radius:6px;margin-right:8px;">
            <option value="">Todas as Empresas</option>
          </select>
          <button onclick="clearHistory()" style="font-size:11px;background:var(--red-bg);color:var(--red-dark);border:1px solid var(--red);border-radius:6px;padding:4px 10px;cursor:pointer;">🗑️ Limpar Tudo</button>
        </div>
        <div id="hist_content">
          <div class="hist-empty">📊 Nenhum snapshot salvo ainda.<br><br>Selecione um setor e empresa acima, informe o trimestre e clique em "Salvar Snapshot" para registrar os indicadores atuais.<br><br>Você poderá acompanhar a evolução dos indicadores Factor Invest ao longo dos trimestres e distinguir melhoras estruturais de resultados pontuais.</div>
        </div>
      </div>
    </div>

    <div style="background:var(--green-50);border:1px solid var(--green-100);border-radius:10px;padding:16px;margin-bottom:18px;">
      <h3 style="font-size:15px;font-weight:700;color:var(--green-800);margin-bottom:10px;">ℹ️ Como usar o Histórico Trimestral</h3>
      <div style="display:grid;grid-template-columns:repeat(auto-fit,minmax(220px,1fr));gap:14px;font-size:12px;color:var(--slate);line-height:1.5;">
        <div><strong style="color:var(--green-800);">1. Registre regularmente</strong><br>Após cada resultado trimestral, acesse o setor, selecione a empresa e salve um snapshot com o código do trimestre (ex: 1T2026).</div>
        <div><strong style="color:var(--green-800);">2. Compare evolução</strong><br>Visualize aqui como os indicadores ROIC, ROE, score Factor, upside e classificação evoluíram ao longo dos trimestres.</div>
        <div><strong style="color:var(--green-800);">3. Identifique tendências</strong><br>Distingua melhoras estruturais (tendência consistente por 2-3 trimestres) de resultados esporádicos que melhoram o factor apenas pontualmente.</div>
        <div><strong style="color:var(--green-800);">4. Tome decisões melhores</strong><br>Uma empresa que melhora consistentemente os indicadores por 3 trimestres seguidos é mais confiável do que outra com apenas um resultado pontual excelente.</div>
      </div>
    </div>
  </div>
</div>

<!-- ═══ FOOTER ═══ -->
<div class="site-footer">
  EASY Invest — Factor Invest & Valuation B3 · Análise de 80 empresas em 5 setores · Cotações ao vivo via Brapi.dev · <strong>Material educacional, não recomendação de investimento.</strong>
</div>

<script>
// ══════════════════════════════════════════════════════════
//  GLOBAL LIVE PRICES & UTILITIES
// ══════════════════════════════════════════════════════════
const livePrices = {};
let lastFetchTime = null;
let marketOpen = false;

function isMarketOpen() {
  const now = new Date();
  const utc = now.getTime() + now.getTimezoneOffset() * 60000;
  const brt = new Date(utc + (-3 * 3600000));
  const day = brt.getDay();
  const mins = brt.getHours() * 60 + brt.getMinutes();
  return day >= 1 && day <= 5 && mins >= 600 && mins <= 1075;
}

function fmtPrice(v) { return 'R$' + ((v||0).toFixed(2).replace('.',',')); }
function fmtPct(v) { return (v >= 0 ? '+' : '') + ((v||0).toFixed(1).replace('.',',')) + '%'; }
function upsideClass(v) { return v >= 5 ? 'upside-pos' : v < -5 ? 'upside-neg' : 'upside-neutral'; }
function badgeClass(v) {
  if (!v) return 'badge badge-neutro';
  if (v.includes('COMPRA FORTE')) return 'badge badge-compra-forte';
  if (v.includes('COMPRA'))       return 'badge badge-compra';
  if (v.includes('NEUTRO') || v.includes('ATENÇÃO') || v.includes('JUSTO')) return 'badge badge-neutro';
  return 'badge badge-venda';
}
function classifHTML(c) {
  const cl = (c.classifBase||'').toLowerCase();
  if (cl.includes('pechincha')) return '<span class="classif-pechincha">🔥 Pechincha</span>';
  if (cl.includes('barato'))    return '<span class="classif-barato">✅ Barato</span>';
  if (cl.includes('justo'))     return '<span class="classif-justo">💛 Justo</span>';
  return '<span class="classif-caro">🔴 Caro</span>';
}
function classifHTMLFromUpside(upside) {
  if (upside >= 20) return '<span class="classif-pechincha">🔥 Pechincha</span>';
  if (upside >= 10) return '<span class="classif-barato">✅ Barato</span>';
  if (upside >= 0)  return '<span class="classif-justo">💛 Justo</span>';
  return '<span class="classif-caro">🔴 Caro</span>';
}
function getVeredictoFromUpside(upside) {
  if (upside >= 20) return '✅ COMPRA FORTE';
  if (upside >= 5)  return '✅ COMPRA';
  if (upside >= -5) return '⚠️ NEUTRO';
  return '🔴 VENDA / EVITAR';
}
function scoreColor(s) { return s === 2 ? 'score-2' : s === 1 ? 'score-1' : 'score-0'; }
function scoreEmoji(s) { return ['🔴','🟡','🟢'][s] || '⬜'; }
function getPrice(ticker, companies) {
  return livePrices[ticker] || (companies||[]).find(c => c.ticker === ticker)?.precoBase || 0;
}
function getUpside(ticker, companies) {
  const c = (companies||[]).find(x => x.ticker === ticker);
  if (!c) return 0;
  const p = getPrice(ticker, companies);
  if (!p) return 0;
  return (c.pjBase - p) / p * 100;
}

// ══════════════════════════════════════════════════════════
//  GENERIC RENDER ENGINE (works for all sectors)
// ══════════════════════════════════════════════════════════
const FACTOR_CRITERIA = [
  'ROIC (>10%=2 | 6-10%=1 | <6%=0)',
  'ROA (>6%=2 | 3-6%=1 | <3%=0)',
  'ROE (>15%=2 | 8-15%=1 | <8%=0)',
  'P/L (<10x=2 | 10-20x=1 | >20x=0)',
  'EV/EBIT (<8x=2 | 8-15x=1 | >15x=0)',
  'Dividend Yield (>6%=2 | 3-6%=1 | <3%=0)',
  'Preço/FCO (<10x=2 | 10-20x=1 | >20x=0)',
  'Preço/Book (<1.5x=2 | 1.5-3x=1 | >3x=0)',
  'Dívida/Ativo (<40%=2 | 40-65%=1 | >65%=0)',
  'Cresc. Dívida (<5%=2 | 5-20%=1 | >20%=0)',
  'Upside Preço Justo (>15%=2 | 5-15%=1 | <5%=0)',
  'Classif. FV (Pechincha/Barato=2 | Justo=1 | Caro=0)',
  'Momentum 1 Ano (>30%=2 | 10-30%=1 | <10%=0)'
];

function renderRankingFor(prefix, companies, subsetores, hasRet1a) {
  const tbody = document.getElementById(prefix + '_rankingTbody');
  if (!tbody) return;
  let html = '';
  subsetores.forEach(sub => {
    const comps = sub.tickers.map(t => companies.find(c => c.ticker === t)).filter(Boolean);
    html += `<tr class="subsetor-header"><td colspan="${hasRet1a ? 18 : 17}">${sub.nome}</td></tr>`;
    comps.forEach((c, idx) => {
      const price = getPrice(c.ticker, companies);
      const upside = getUpside(c.ticker, companies);
      const veredicto = c.veredicto || getVeredictoFromUpside(upside);
      const sc = c.scoreNum || 0;
      const barW = Math.round(sc / 26 * 100);
      const barColor = sc >= 20 ? '#166534' : sc >= 16 ? '#16A34A' : sc >= 12 ? '#D97706' : '#DC2626';
      const clHtml = c.classifBase ? classifHTML(c) : classifHTMLFromUpside(upside);
      html += `<tr>
        <td class="rank-num">${c.rank || idx+1}</td>
        <td><span class="ticker-chip">${c.ticker}</span></td>
        <td style="font-weight:500;min-width:120px">${c.nome}</td>
        <td style="font-size:11px;color:var(--slate)">${c.icon||''} ${c.subsetor||''}</td>
        <td class="val-live" id="${prefix}_price-${c.ticker}">${fmtPrice(price)}</td>
        <td class="val-price">${fmtPrice(c.pjBase)}</td>
        <td>${clHtml}</td>
        <td><span class="${upsideClass(upside)}" id="${prefix}_upside-${c.ticker}">${fmtPct(upside)}</span></td>
        <td class="val-mono">${c.roic||'N/D'}</td>
        <td class="val-mono">${c.roa||'N/D'}</td>
        <td class="val-mono">${c.roe||'N/D'}</td>
        <td class="val-mono">${c.pl||'N/D'}</td>
        <td class="val-mono">${c.evEbit||'N/D'}</td>
        <td class="val-mono">${c.dy||'N/D'}</td>
        <td class="val-mono">${c.divAtivo||'N/D'}</td>
        ${hasRet1a ? `<td class="val-mono" style="color:${(c.ret1a||'-').startsWith('+')?'var(--green-700)':'var(--red)'}">${c.ret1a||'N/D'}</td>` : ''}
        <td><span class="${badgeClass(veredicto)}">${veredicto}</span></td>
        <td><div class="score-display"><div class="score-bar-wrap"><div class="score-bar" style="width:${barW}%;background:${barColor}"></div></div><span class="score-text" style="color:${barColor}">${c.score||sc+'/26'}</span></div></td>
      </tr>`;
    });
  });
  tbody.innerHTML = html;
}

function renderFactorFor(prefix, companies, subsetores) {
  const el = document.getElementById(prefix + '_factorContent');
  if (!el) return;
  let html = '';
  subsetores.forEach(sub => {
    const comps = sub.tickers.map(t => companies.find(c => c.ticker === t)).filter(Boolean);
    html += `<div class="heatmap-wrap"><div class="heatmap-header">${sub.nome}</div><div style="overflow-x:auto"><table class="heatmap-table"><thead><tr><th style="text-align:left">INDICADOR / FATOR</th>`;
    comps.forEach(c => { html += `<th>#${c.rank||''}<br><span style="font-family:JetBrains Mono,monospace;font-size:11px">${c.ticker}</span><br>${c.score||''}</th>`; });
    html += '</tr></thead><tbody>';
    FACTOR_CRITERIA.forEach((crit, fi) => {
      html += `<tr><td>${crit}</td>`;
      comps.forEach(c => { const s = (c.hm||[])[fi] ?? 1; html += `<td class="${scoreColor(s)}">${scoreEmoji(s)}<br>${s}</td>`; });
      html += '</tr>';
    });
    html += '<tr><td>▶ PONTUAÇÃO TOTAL (0–26)</td>';
    comps.forEach(c => { html += `<td>${c.score||'N/D'}</td>`; });
    html += '</tr></tbody></table></div></div>';
  });
  el.innerHTML = html;
}

function renderMestraFor(prefix, companies) {
  const thead = document.getElementById(prefix + '_mestraThead');
  const tbody = document.getElementById(prefix + '_mestraTbody');
  if (!thead || !tbody) return;
  let hh = '<tr><th class="sticky-col" style="min-width:160px">INDICADOR</th>';
  companies.forEach(c => { hh += `<th>#${c.rank||''}<br>${c.ticker}</th>`; });
  thead.innerHTML = hh + '</tr>';
  const rows = [
    {label:'  PREÇO & CLASSIFICAÇÃO', group:true},
    {label:'Preço Atual', fn:c=>`<span class="val-live" id="${prefix}_m-price-${c.ticker}">${fmtPrice(getPrice(c.ticker, companies))}</span>`},
    {label:'Preço Justo', fn:c=>`<span class="val-price">${fmtPrice(c.pjBase)}</span>`},
    {label:'Classif.', fn:c=>c.classifBase ? classifHTML(c) : classifHTMLFromUpside(getUpside(c.ticker, companies))},
    {label:'Upside', fn:c=>`<span class="${upsideClass(getUpside(c.ticker,companies))}" id="${prefix}_m-upside-${c.ticker}">${fmtPct(getUpside(c.ticker,companies))}</span>`},
    {label:'  RENTABILIDADE', group:true},
    {label:'ROIC', fn:c=>c.roic||'N/D'},{label:'ROA', fn:c=>c.roa||'N/D'},{label:'ROE', fn:c=>c.roe||'N/D'},
    {label:'  VALUATION', group:true},
    {label:'P/L', fn:c=>c.pl||'N/D'},{label:'EV/EBIT', fn:c=>c.evEbit||'N/D'},
    {label:'  DIVIDENDOS', group:true},
    {label:'Div.Yield', fn:c=>c.dy||'N/D'},
    {label:'  SAÚDE FINANCEIRA', group:true},
    {label:'Dív/Ativo', fn:c=>c.divAtivo||'N/D'},
    {label:'  FACTOR', group:true},
    {label:'Pontuação', fn:c=>`<strong>${c.score||'N/D'}</strong>`},
    {label:'Veredicto', fn:c=>{const v=c.veredicto||getVeredictoFromUpside(getUpside(c.ticker,companies));return `<span class="${badgeClass(v)}">${v}</span>`;}},
    {label:'Sub-Setor', fn:c=>`${c.icon||''} ${c.subsetor||''}`}
  ];
  let tb = '';
  rows.forEach(r => {
    if (r.group) { tb += `<tr class="subsetor-header"><td class="sticky-col" colspan="${companies.length+1}" style="font-size:11px;letter-spacing:.5px">${r.label}</td></tr>`; }
    else { tb += `<tr><td class="sticky-col" style="font-weight:500;color:var(--slate);font-size:12px">${r.label}</td>`; companies.forEach(c => { tb += `<td style="text-align:center;font-size:12px;font-family:JetBrains Mono,monospace">${r.fn(c)}</td>`; }); tb += '</tr>'; }
  });
  tbody.innerHTML = tb;
}

function renderProjecoesFor(prefix, companies, subsetores) {
  const el = document.getElementById(prefix + '_projContent');
  if (!el) return;
  let html = '';
  subsetores.forEach(sub => {
    html += `<div style="grid-column:1/-1;background:var(--green-50);border:1px solid var(--green-100);border-left:4px solid var(--green-600);border-radius:0 8px 8px 0;padding:7px 13px;font-weight:700;color:var(--green-800);font-size:13px;">${sub.nome}</div>`;
    sub.tickers.map(t => companies.find(c => c.ticker === t)).filter(Boolean).forEach(c => {
      const price = getPrice(c.ticker, companies);
      const upside = getUpside(c.ticker, companies);
      const veredicto = c.veredicto || getVeredictoFromUpside(upside);
      const pessVal = c.pessNum || (c.pjBase * 0.8);
      const otimVal = c.otimNum || (c.pjBase * 1.2);
      const rP = price ? ((pessVal - price)/price*100).toFixed(1) : '0.0';
      const rR = price ? ((c.pjBase - price)/price*100).toFixed(1) : '0.0';
      const rO = price ? ((otimVal - price)/price*100).toFixed(1) : '0.0';
      html += `<div class="proj-card">
        <div class="proj-card-header">
          <div>
            <div style="font-weight:700;font-size:13px">${c.nome}</div>
            <div style="font-size:11px;opacity:.75;margin-top:2px">${c.icon||''} ${c.subsetor||''}</div>
          </div>
          <div style="text-align:right">
            <span style="font-family:JetBrains Mono,monospace;font-size:11px;opacity:.8">${c.ticker}</span><br>
            <span class="${badgeClass(veredicto)}" style="font-size:10px;margin-top:3px">${veredicto}</span>
          </div>
        </div>
        <div class="proj-card-body">
          <div class="proj-row"><span class="proj-label">Preço Atual (ao vivo)</span><span class="proj-val val-live" id="${prefix}_pj-price-${c.ticker}">${fmtPrice(price)}</span></div>
          <div class="proj-row"><span class="proj-label">Preço Justo (PJ)</span><span class="proj-val">${fmtPrice(c.pjBase)}</span></div>
          <div class="proj-row"><span class="proj-label">Upside vs PJ</span><span class="proj-val ${upsideClass(upside)}" id="${prefix}_pj-upside-${c.ticker}">${fmtPct(upside)}</span></div>
          <div class="proj-row"><span class="proj-label">Alvo Analistas</span><span class="proj-val">${c.alvoAnal||'N/D'}</span></div>
          <div class="proj-row"><span class="proj-label">Pontuação Factor</span><span class="proj-val">${c.score||'N/D'}</span></div>
          <p style="font-size:11px;color:var(--slate);margin:7px 0 3px;line-height:1.4">💡 ${c.tip||c.nome}</p>
          <div class="proj-scenarios">
            <div class="scenario-box scen-pess"><div class="sc-name">Pessimista</div><div class="sc-alvo">${c.pess||fmtPrice(pessVal)}</div><div class="sc-ret">${rP>=0?'+':''}${rP}%</div></div>
            <div class="scenario-box scen-real"><div class="sc-name">Realista</div><div class="sc-alvo">${fmtPrice(c.pjBase)}</div><div class="sc-ret">${rR>=0?'+':''}${rR}%</div></div>
            <div class="scenario-box scen-otim"><div class="sc-name">Otimista</div><div class="sc-alvo">${c.otim||fmtPrice(otimVal)}</div><div class="sc-ret">${rO>=0?'+':''}${rO}%</div></div>
          </div>
        </div>
      </div>`;
    });
  });
  el.innerHTML = html;
}

function renderAnaliseFor(prefix, companies, subsetores) {
  const el = document.getElementById(prefix + '_analiseContent');
  if (!el) return;
  let html = '';
  subsetores.forEach(sub => {
    html += `<div style="background:var(--green-50);border:1px solid var(--green-100);border-left:4px solid var(--green-600);border-radius:0 8px 8px 0;padding:9px 15px;font-weight:700;color:var(--green-800);font-size:14px;margin-bottom:4px;">${sub.nome}</div>`;
    sub.tickers.map(t => companies.find(c => c.ticker === t)).filter(Boolean).forEach(c => {
      const price = getPrice(c.ticker, companies);
      const upside = getUpside(c.ticker, companies);
      const veredicto = c.veredicto || getVeredictoFromUpside(upside);
      html += `<div class="analise-card">
        <div class="analise-card-header">
          <div>
            <span class="analise-ticker">${c.ticker}</span>
            <span class="analise-nome" style="margin-left:10px">${c.nome}</span><br>
            <span style="font-size:12px;opacity:.8;margin-top:3px;display:block">${c.icon||''} ${c.subsetor||''}</span>
          </div>
          <div style="text-align:right">
            <span class="analise-score">${c.score||'N/D'} · ${veredicto}</span><br>
            <span style="font-size:12px;margin-top:5px;display:block;opacity:.85">PJ: ${fmtPrice(c.pjBase)}</span>
          </div>
        </div>
        <div class="analise-card-body">
          <div class="analise-summary">
            <div class="analise-kpi"><div class="kpi-label">Preço Atual</div><div class="kpi-val" id="${prefix}_an-price-${c.ticker}">${fmtPrice(price)}</div></div>
            <div class="analise-kpi"><div class="kpi-label">Upside/Down</div><div class="kpi-val ${upsideClass(upside)}" id="${prefix}_an-upside-${c.ticker}">${fmtPct(upside)}</div></div>
            <div class="analise-kpi"><div class="kpi-label">ROIC</div><div class="kpi-val">${c.roic||'N/D'}</div></div>
            <div class="analise-kpi"><div class="kpi-label">ROE</div><div class="kpi-val">${c.roe||'N/D'}</div></div>
            <div class="analise-kpi"><div class="kpi-label">P/L</div><div class="kpi-val">${c.pl||'N/D'}</div></div>
            <div class="analise-kpi"><div class="kpi-label">EV/EBIT</div><div class="kpi-val">${c.evEbit||'N/D'}</div></div>
            <div class="analise-kpi"><div class="kpi-label">Div.Yield</div><div class="kpi-val">${c.dy||'N/D'}</div></div>
            <div class="analise-kpi"><div class="kpi-label">Dív/Ativo</div><div class="kpi-val">${c.divAtivo||'N/D'}</div></div>
          </div>
          <div class="analise-section"><div class="analise-section-title">✅ PONTOS POSITIVOS</div><div class="analise-section-content">${c.pontos_pos||'N/D'}</div></div>
          <div class="analise-section"><div class="analise-section-title" style="background:#FEF2F2;border-left-color:#DC2626;color:#991B1B">⚠️ PONTOS NEGATIVOS</div><div class="analise-section-content neg">${c.pontos_neg||'N/D'}</div></div>
          <div class="analise-section"><div class="analise-section-title" style="background:#EFF6FF;border-left-color:#2563EB;color:#1D4ED8">💰 FLUXO DE CAIXA</div><div class="analise-section-content" style="color:var(--slate)">${c.fco||'N/D'}</div></div>
          <div class="analise-section"><div class="analise-section-title" style="background:#F5F3FF;border-left-color:#7C3AED;color:#5B21B6">📊 VALUATION / DCF</div><div class="analise-section-content" style="color:var(--slate)">${c.dcf||'N/D'}</div></div>
          <div class="analise-section"><div class="analise-section-title" style="background:#ECFDF5;border-left-color:#059669;color:#065F46">🎯 ESTRATÉGIA</div><div class="analise-section-content" style="font-weight:600;color:var(--green-800)">${c.estrategiaDetalhe||c.estrategia||'N/D'}</div></div>
        </div>
      </div>`;
    });
  });
  el.innerHTML = html;
}

function renderDecisOrioFor(prefix, companies, subsetores) {
  const el = document.getElementById(prefix + '_decisorioContent');
  if (!el) return;
  let html = '';
  subsetores.forEach(sub => {
    const comps = sub.tickers.map(t => companies.find(c => c.ticker === t)).filter(Boolean);
    html += `<div class="decisorio-section"><div class="decisorio-header">${sub.nome}</div><div style="overflow-x:auto"><table class="decisorio-table"><thead><tr><th>Rank</th><th>Ticker</th><th>Nome</th><th>Pontuação</th><th>Veredicto</th><th>Momento</th><th>Preço Atual</th><th>Preço Justo</th><th>Upside/Down</th><th>Classificação</th><th>Estratégia</th></tr></thead><tbody>`;
    comps.forEach((c, idx) => {
      const price = getPrice(c.ticker, companies);
      const upside = getUpside(c.ticker, companies);
      const veredicto = c.veredicto || getVeredictoFromUpside(upside);
      const clHtml = c.classifBase ? classifHTML(c) : classifHTMLFromUpside(upside);
      html += `<tr>
        <td class="rank-num">${idx+1}</td>
        <td><span class="ticker-chip">${c.ticker}</span></td>
        <td style="font-weight:500;min-width:120px">${c.nome}</td>
        <td><strong>${c.score||'N/D'}</strong></td>
        <td><span class="${badgeClass(veredicto)}">${veredicto}</span></td>
        <td style="font-size:12px;color:var(--slate)">${c.momento||'—'}</td>
        <td class="val-live" id="${prefix}_dec-price-${c.ticker}">${fmtPrice(price)}</td>
        <td class="val-price">${fmtPrice(c.pjBase)}</td>
        <td><span class="${upsideClass(upside)}" id="${prefix}_dec-upside-${c.ticker}">${fmtPct(upside)}</span></td>
        <td>${clHtml}</td>
        <td class="strategy-text">${c.estrategia||c.estrategiaDetalhe||'—'}</td>
      </tr>`;
    });
    html += '</tbody></table></div></div>';
  });
  el.innerHTML = html;
}

function updateTopUpsideFor(prefix, companies, elementId) {
  const top2 = companies.map(c => ({ticker:c.ticker, upside:getUpside(c.ticker, companies)}))
    .sort((a,b) => b.upside - a.upside).slice(0,2);
  const el = document.getElementById(elementId);
  if (el) el.textContent = top2.map(x => x.ticker + ' ' + fmtPct(x.upside)).join(' · ');
}

function updateAllLivePricesIn(prefix, companies) {
  companies.forEach(c => {
    const price = getPrice(c.ticker, companies);
    const upside = getUpside(c.ticker, companies);
    const updateEl = (id, val) => { const el = document.getElementById(id); if (el) el.textContent = val; };
    updateEl(`${prefix}_price-${c.ticker}`, fmtPrice(price));
    updateEl(`${prefix}_upside-${c.ticker}`, fmtPct(upside));
    updateEl(`${prefix}_m-price-${c.ticker}`, fmtPrice(price));
    updateEl(`${prefix}_m-upside-${c.ticker}`, fmtPct(upside));
    updateEl(`${prefix}_pj-price-${c.ticker}`, fmtPrice(price));
    updateEl(`${prefix}_pj-upside-${c.ticker}`, fmtPct(upside));
    updateEl(`${prefix}_an-price-${c.ticker}`, fmtPrice(price));
    updateEl(`${prefix}_an-upside-${c.ticker}`, fmtPct(upside));
    updateEl(`${prefix}_dec-price-${c.ticker}`, fmtPrice(price));
    updateEl(`${prefix}_dec-upside-${c.ticker}`, fmtPct(upside));
  });
}

function renderAllFor(prefix, companies, subsetores, hasRet1a) {
  renderRankingFor(prefix, companies, subsetores, hasRet1a);
  renderFactorFor(prefix, companies, subsetores);
  renderMestraFor(prefix, companies);
  renderProjecoesFor(prefix, companies, subsetores);
  renderAnaliseFor(prefix, companies, subsetores);
  renderDecisOrioFor(prefix, companies, subsetores);
}

// ══════════════════════════════════════════════════════════
//  FETCH ALL SECTOR PRICES
// ══════════════════════════════════════════════════════════
async function fetchAllSectorPrices() {
  const btn = document.getElementById('updateBtn');
  const statusEl = document.getElementById('priceStatus');
  const marketEl = document.getElementById('marketStatus');
  btn.classList.add('loading');
  document.getElementById('updateBtnText').textContent = 'Buscando...';
  marketOpen = isMarketOpen();
  marketEl.textContent = marketOpen ? '🟢 Mercado Aberto (B3)' : '🔴 Mercado Fechado';

  const allTickers = [
    ...EN_COMPANIES, ...PET_COMPANIES, ...IMO_COMPANIES, ...EQ_COMPANIES, ...SAU_COMPANIES
  ].map(c => c.ticker);
  const uniqueTickers = [...new Set(allTickers)];

  try {
    const chunks = [];
    for (let i = 0; i < uniqueTickers.length; i += 50) chunks.push(uniqueTickers.slice(i, i+50));
    for (const chunk of chunks) {
      try {
        const url = `https://brapi.dev/api/quote/${chunk.join(',')}?range=1d&interval=1d&fundamental=false&dividends=false`;
        const res = await fetch(url, {signal: AbortSignal.timeout(10000)});
        if (!res.ok) throw new Error('brapi');
        const data = await res.json();
        if (data.results) data.results.forEach(r => { if (r.regularMarketPrice) livePrices[r.symbol] = r.regularMarketPrice; });
      } catch(e) {}
    }
    lastFetchTime = new Date();
    statusEl.textContent = `${marketOpen ? '🟢 Ao vivo' : '🔴 Fechamento'} · ${lastFetchTime.toLocaleTimeString('pt-BR')}`;
    statusEl.className = 'price-status live';
  } catch(e) {
    statusEl.textContent = 'Cotação indisponível — usando dados base';
  }

  btn.classList.remove('loading');
  document.getElementById('updateBtnText').textContent = '⟳ Atualizar Cotações';
  refreshAllSectorRenders();
  updateGlobalTopUpside();
}

function refreshAllSectorRenders() {
  updateAllLivePricesIn('EN', EN_COMPANIES);
  updateAllLivePricesIn('PET', PET_COMPANIES);
  updateAllLivePricesIn('IMO', IMO_COMPANIES);
  updateAllLivePricesIn('EQ', EQ_COMPANIES);
  updateAllLivePricesIn('SAU', SAU_COMPANIES);
  updateTopUpsideFor('EN', EN_COMPANIES, 'EN_topUpside');
  updateTopUpsideFor('PET', PET_COMPANIES, 'PET_topUpside');
  updateTopUpsideFor('IMO', IMO_COMPANIES, 'IMO_topUpside');
  updateTopUpsideFor('EQ', EQ_COMPANIES, 'EQ_topUpside');
  updateTopUpsideFor('SAU', SAU_COMPANIES, 'SAU_topUpside');
}

function updateGlobalTopUpside() {
  const all = [
    ...EN_COMPANIES.map(c => ({ticker:c.ticker, sector:'EN', upside:getUpside(c.ticker, EN_COMPANIES)})),
    ...PET_COMPANIES.map(c => ({ticker:c.ticker, sector:'PET', upside:getUpside(c.ticker, PET_COMPANIES)})),
    ...IMO_COMPANIES.map(c => ({ticker:c.ticker, sector:'IMO', upside:getUpside(c.ticker, IMO_COMPANIES)})),
    ...EQ_COMPANIES.map(c => ({ticker:c.ticker, sector:'EQ', upside:getUpside(c.ticker, EQ_COMPANIES)})),
    ...SAU_COMPANIES.map(c => ({ticker:c.ticker, sector:'SAU', upside:getUpside(c.ticker, SAU_COMPANIES)})),
  ].sort((a,b) => b.upside - a.upside);
  const el = document.getElementById('globalTopUpside');
  if (el) el.textContent = all.slice(0,3).map(x => x.ticker + ' ' + fmtPct(x.upside)).join(' · ');
}

function scheduleGlobalRefresh() {
  const interval = isMarketOpen() ? 90000 : 300000;
  setTimeout(async () => { await fetchAllSectorPrices(); scheduleGlobalRefresh(); }, interval);
}

// ══════════════════════════════════════════════════════════
//  NAVIGATION
// ══════════════════════════════════════════════════════════
function showSector(id, btn) {
  document.querySelectorAll('.sector-panel').forEach(p => p.classList.remove('active'));
  document.querySelectorAll('.sec-btn').forEach(b => b.classList.remove('active'));
  document.getElementById('panel-' + id)?.classList.add('active');
  if (btn) btn.classList.add('active');
}

function showTab(prefix, tabId, btn) {
  const panel = document.getElementById('panel-' + {EN:'energia',PET:'petroleo',IMO:'imobiliario',EQ:'equipamentos',SAU:'saude'}[prefix]);
  if (!panel) return;
  panel.querySelectorAll('.section').forEach(s => s.classList.remove('active'));
  panel.querySelectorAll('.tab-btn').forEach(b => b.classList.remove('active'));
  document.getElementById(prefix + '_tab-' + tabId)?.classList.add('active');
  if (btn) btn.classList.add('active');
}

// ══════════════════════════════════════════════════════════
//  HISTORY DATABASE (localStorage)
// ══════════════════════════════════════════════════════════
function getHistoryDB() {
  try { return JSON.parse(localStorage.getItem('easy_invest_history') || '[]'); } catch { return []; }
}
function saveHistoryDB(db) {
  try { localStorage.setItem('easy_invest_history', JSON.stringify(db)); } catch(e) { alert('Erro ao salvar: ' + e.message); }
}

function saveHistorySnapshot() {
  const sector = document.getElementById('hist_sector').value;
  const ticker = document.getElementById('hist_ticker_select').value;
  const quarter = document.getElementById('hist_quarter').value.trim();
  if (!ticker || ticker === 'Selecionar empresa...') { alert('Selecione uma empresa.'); return; }
  if (!quarter) { alert('Informe o trimestre (ex: 4T2025).'); return; }

  const companiesMap = {EN: EN_COMPANIES, PET: PET_COMPANIES, IMO: IMO_COMPANIES, EQ: EQ_COMPANIES, SAU: SAU_COMPANIES};
  const companies = companiesMap[sector] || [];
  const c = companies.find(x => x.ticker === ticker);
  if (!c) { alert('Empresa não encontrada.'); return; }

  const price = getPrice(ticker, companies);
  const upside = getUpside(ticker, companies);
  const db = getHistoryDB();
  const entry = {
    id: Date.now(),
    sector,
    ticker,
    quarter,
    nome: c.nome,
    savedAt: new Date().toISOString(),
    price: price,
    pjBase: c.pjBase,
    upside: upside.toFixed(1),
    score: c.score || (c.scoreNum + '/26'),
    scoreNum: c.scoreNum || 0,
    veredicto: c.veredicto || getVeredictoFromUpside(upside),
    classif: c.classifBase || 'Justo',
    roic: c.roic || 'N/D',
    roe: c.roe || 'N/D',
    roa: c.roa || 'N/D',
    pl: c.pl || 'N/D',
    evEbit: c.evEbit || 'N/D',
    dy: c.dy || 'N/D',
    divAtivo: c.divAtivo || 'N/D',
  };
  db.unshift(entry);
  saveHistoryDB(db);
  renderHistory();
  alert(`✅ Snapshot ${ticker} — ${quarter} salvo com sucesso!`);
}

function deleteHistoryEntry(id) {
  if (!confirm('Excluir este registro?')) return;
  const db = getHistoryDB().filter(e => e.id !== id);
  saveHistoryDB(db);
  renderHistory();
}

function clearHistory() {
  if (!confirm('Excluir TODO o histórico? Esta ação não pode ser desfeita.')) return;
  saveHistoryDB([]);
  renderHistory();
}

function renderHistory() {
  const filterSector = document.getElementById('hist_filter_sector')?.value || '';
  const filterTicker = document.getElementById('hist_filter_ticker')?.value || '';
  let db = getHistoryDB();
  if (filterSector) db = db.filter(e => e.sector === filterSector);
  if (filterTicker) db = db.filter(e => e.ticker === filterTicker);

  const el = document.getElementById('hist_content');
  if (!el) return;
  if (!db.length) { el.innerHTML = '<div class="hist-empty">📊 Nenhum registro encontrado.<br>Salve snapshots trimestrais para acompanhar a evolução dos indicadores.</div>'; return; }

  const sectorLabel = {EN:'⚡ Energia',PET:'🛢️ Petróleo',IMO:'🏗️ Imobiliário',EQ:'⚙️ Equipamentos',SAU:'🏥 Saúde'};
  let html = '<div class="hist-timeline">';
  db.forEach(e => {
    const savedDate = new Date(e.savedAt).toLocaleDateString('pt-BR');
    html += `<div class="hist-entry">
      <div class="hist-entry-hdr">
        <div>
          <span class="hist-ticker">${e.ticker}</span>
          <span style="font-size:12px;margin-left:8px;color:var(--slate)">${e.nome}</span>
          <span style="font-size:11px;margin-left:8px;background:var(--green-100);color:var(--green-800);padding:1px 7px;border-radius:10px;font-weight:600">${e.quarter}</span>
          <span style="font-size:11px;margin-left:6px;color:var(--muted)">${sectorLabel[e.sector]||e.sector}</span>
        </div>
        <div style="display:flex;align-items:center;gap:8px;">
          <span class="hist-date">Salvo: ${savedDate}</span>
          <button class="hist-del-btn" onclick="deleteHistoryEntry(${e.id})">🗑️ Excluir</button>
        </div>
      </div>
      <div class="hist-kpis">
        <div class="hist-kpi"><div class="hk-label">Preço</div><div class="hk-val">${fmtPrice(e.price)}</div></div>
        <div class="hist-kpi"><div class="hk-label">P. Justo</div><div class="hk-val">${fmtPrice(e.pjBase)}</div></div>
        <div class="hist-kpi"><div class="hk-label">Upside</div><div class="hk-val" style="color:${parseFloat(e.upside)>=5?'var(--green-700)':parseFloat(e.upside)<-5?'var(--red)':'var(--amber)'}">${e.upside}%</div></div>
        <div class="hist-kpi"><div class="hk-label">Score</div><div class="hk-val">${e.score}</div></div>
        <div class="hist-kpi"><div class="hk-label">ROIC</div><div class="hk-val">${e.roic}</div></div>
        <div class="hist-kpi"><div class="hk-label">ROE</div><div class="hk-val">${e.roe}</div></div>
        <div class="hist-kpi"><div class="hk-label">P/L</div><div class="hk-val">${e.pl}</div></div>
        <div class="hist-kpi"><div class="hk-label">DY</div><div class="hk-val">${e.dy}</div></div>
        <div class="hist-kpi"><div class="hk-label">Dív/Ativo</div><div class="hk-val">${e.divAtivo}</div></div>
        <div class="hist-kpi"><div class="hk-label">Classif.</div><div class="hk-val" style="font-size:11px">${e.classif}</div></div>
      </div>
      <div style="margin-top:8px;font-size:11px;color:var(--slate)">Veredicto: <span class="${badgeClass(e.veredicto)}" style="font-size:10px">${e.veredicto}</span></div>
    </div>`;
  });
  html += '</div>';
  el.innerHTML = html;

  // Update filter ticker options
  const allTickers = [...new Set(getHistoryDB().map(e => e.ticker))].sort();
  const filterSelect = document.getElementById('hist_filter_ticker');
  if (filterSelect) {
    const current = filterSelect.value;
    filterSelect.innerHTML = '<option value="">Todas as Empresas</option>' +
      allTickers.map(t => `<option value="${t}" ${t===current?'selected':''}>${t}</option>`).join('');
  }
}

function updateHistTickerSelect() {
  const sector = document.getElementById('hist_sector').value;
  const companiesMap = {EN: EN_COMPANIES, PET: PET_COMPANIES, IMO: IMO_COMPANIES, EQ: EQ_COMPANIES, SAU: SAU_COMPANIES};
  const companies = companiesMap[sector] || [];
  const sel = document.getElementById('hist_ticker_select');
  if (sel) sel.innerHTML = '<option>Selecionar empresa...</option>' +
    companies.map(c => `<option value="${c.ticker}">${c.ticker} — ${c.nome}</option>`).join('');
}
document.getElementById('hist_sector')?.addEventListener('change', updateHistTickerSelect);
</script>

<!-- ══════════════════════════════════════════════════
     SECTOR DATA SCRIPTS
═══════════════════════════════════════════════════ -->
<script>
// ─── ENERGIA ELÉTRICA DATA ───────────────────────────────

// ══════════════════════════════════════════════════════════════
//  DADOS — ENERGIA ELÉTRICA B3
// ══════════════════════════════════════════════════════════════
const COMPANIES_EN = [
  { rank:1, ticker:'TAEE3', nome:'TAESA', subsetor:'Transmissão', icon:'🔗',
    precoBase:13.67, precoJusto:16.65, precoJustoPROJ:16.65, classificacaoBase:'Barato',
    roic:10.4, roa:7.4, roe:21.7, plD:'9.0x', evD:'9.2x', dy:4.8, divAtivo:44.0, ret1a:33.6,
    pbD:'1.87x', pfcoD:'9.3x', fcfY:0.0, receita:'R$4.5B', ebitda:'R$2.0B', divida:'R$10.5B',
    veredicto:'COMPRA FORTE', pontuacao:20, momento:'OPORTUNIDADE DE COMPRA',
    estrategia:'Posição core 5-8% carteira · Stop R$11.62 · Alvo R$15.50', alvoAnal:15.50,
    pessim:13.32, realista:16.65, otimista:19.98, rankSub:1,
    scores:[2,2,2,2,1,1,2,1,1,0,2,2,2] },

  { rank:2, ticker:'EQPA3', nome:'Equatorial Pará', subsetor:'Distribuição', icon:'🏘️',
    precoBase:6.98, precoJusto:9.21, precoJustoPROJ:9.21, classificacaoBase:'Barato',
    roic:15.8, roa:8.4, roe:33.2, plD:'9.4x', evD:'8.3x', dy:9.4, divAtivo:39.6, ret1a:20.0,
    pbD:'3.04x', pfcoD:'8.0x', fcfY:0.0, receita:'R$7.0B', ebitda:'R$2.5B', divida:'R$6.0B',
    veredicto:'COMPRA FORTE', pontuacao:20, momento:'OPORTUNIDADE DE COMPRA',
    estrategia:'Posição core 5-8% carteira · Stop R$5.93 · Alvo R$9.50', alvoAnal:9.50,
    pessim:7.37, realista:9.21, otimista:11.05, rankSub:1,
    scores:[2,2,2,2,1,2,2,0,2,0,2,2,1] },

  { rank:3, ticker:'CMIG4', nome:'Cemig PN', subsetor:'Integrada', icon:'🏭',
    precoBase:12.32, precoJusto:13.41, precoJustoPROJ:13.41, classificacaoBase:'Justo',
    roic:12.2, roa:7.7, roe:17.5, plD:'8.0x', evD:'8.4x', dy:13.7, divAtivo:33.6, ret1a:25.0,
    pbD:'1.38x', pfcoD:'9.7x', fcfY:0.0, receita:'R$30.0B', ebitda:'R$8.0B', divida:'R$18.0B',
    veredicto:'COMPRA FORTE', pontuacao:20, momento:'OPORTUNIDADE DE COMPRA',
    estrategia:'Posição core 5-8% carteira · Stop R$10.47 · Alvo R$14.00', alvoAnal:14.00,
    pessim:10.73, realista:13.41, otimista:16.09, rankSub:1,
    scores:[2,2,2,2,1,2,2,2,2,0,1,1,1] },

  { rank:4, ticker:'GEPA3', nome:'Paranapanema Energia', subsetor:'Geração', icon:'⚡',
    precoBase:33.00, precoJusto:38.73, precoJustoPROJ:38.73, classificacaoBase:'Justo',
    roic:12.9, roa:6.7, roe:17.7, plD:'13.2x', evD:'11.1x', dy:29.5, divAtivo:28.8, ret1a:15.0,
    pbD:'2.66x', pfcoD:'6.0x', fcfY:0.0, receita:'R$2.0B', ebitda:'R$0.9B', divida:'R$2.0B',
    veredicto:'COMPRA', pontuacao:19, momento:'MONITORAR',
    estrategia:'Compra gradual · Stop R$28.71 · Alvo R$38.73 (PJ)', alvoAnal:38.00,
    pessim:30.98, realista:38.73, otimista:46.48, rankSub:1,
    scores:[2,2,2,1,1,2,2,1,2,0,2,1,1] },

  { rank:5, ticker:'CEEB3', nome:'Coelba', subsetor:'Distribuição', icon:'🏘️',
    precoBase:47.94, precoJusto:56.22, precoJustoPROJ:56.22, classificacaoBase:'Justo',
    roic:13.8, roa:5.8, roe:25.6, plD:'6.3x', evD:'7.2x', dy:13.6, divAtivo:62.7, ret1a:25.0,
    pbD:'1.58x', pfcoD:'7.0x', fcfY:0.0, receita:'R$10.0B', ebitda:'R$3.5B', divida:'R$12.0B',
    veredicto:'COMPRA', pontuacao:19, momento:'MONITORAR',
    estrategia:'Compra gradual · Stop R$41.71 · Alvo R$56.22 (PJ)', alvoAnal:55.00,
    pessim:44.98, realista:56.22, otimista:67.46, rankSub:2,
    scores:[2,1,2,2,2,2,2,1,1,0,2,1,1] },

  { rank:6, ticker:'CPFE3', nome:'CPFL Energia', subsetor:'Distribuição', icon:'🏘️',
    precoBase:46.85, precoJusto:45.70, precoJustoPROJ:45.70, classificacaoBase:'Justo',
    roic:14.2, roa:7.3, roe:25.4, plD:'9.8x', evD:'7.7x', dy:2.3, divAtivo:38.3, ret1a:35.3,
    pbD:'2.38x', pfcoD:'7.5x', fcfY:0.0, receita:'R$44.4B', ebitda:'R$9.0B', divida:'R$33.9B',
    veredicto:'COMPRA', pontuacao:18, momento:'MONITORAR',
    estrategia:'Compra gradual · Stop R$40.76 · Alvo R$45.70 (PJ)', alvoAnal:43.50,
    pessim:36.56, realista:45.70, otimista:54.84, rankSub:3,
    scores:[2,2,2,2,2,0,2,1,2,0,0,1,2] },

  { rank:7, ticker:'CLSC3', nome:'Celesc', subsetor:'Integrada', icon:'🏭',
    precoBase:128.10, precoJusto:140.82, precoJustoPROJ:140.82, classificacaoBase:'Justo',
    roic:11.8, roa:5.2, roe:19.1, plD:'7.6x', evD:'7.2x', dy:7.2, divAtivo:46.3, ret1a:20.0,
    pbD:'1.35x', pfcoD:'20.9x', fcfY:0.0, receita:'R$9.2B', ebitda:'R$2.5B', divida:'R$6.0B',
    veredicto:'COMPRA', pontuacao:17, momento:'MONITORAR',
    estrategia:'Compra gradual · Stop R$111.45 · Alvo R$140.82 (PJ)', alvoAnal:140.00,
    pessim:112.66, realista:140.82, otimista:168.98, rankSub:2,
    scores:[2,1,2,2,2,2,0,2,1,0,1,1,1] },

  { rank:8, ticker:'ALUP11', nome:'Alupar Investimento', subsetor:'Transmissão', icon:'🔗',
    precoBase:34.68, precoJusto:33.85, precoJustoPROJ:33.85, classificacaoBase:'Justo',
    roic:9.4, roa:5.5, roe:14.3, plD:'9.4x', evD:'8.5x', dy:3.1, divAtivo:46.0, ret1a:26.6,
    pbD:'1.25x', pfcoD:'5.7x', fcfY:19.9, receita:'R$4.4B', ebitda:'R$2.9B', divida:'R$12.5B',
    veredicto:'COMPRA', pontuacao:16, momento:'MONITORAR',
    estrategia:'Compra gradual · Stop R$30.17 · Alvo R$33.85 (PJ)', alvoAnal:38.22,
    pessim:27.08, realista:33.85, otimista:40.62, rankSub:2,
    scores:[1,1,1,2,1,1,2,2,1,2,0,1,1] },

  { rank:9, ticker:'NEOE3', nome:'Neoenergia', subsetor:'Distribuição', icon:'🏘️',
    precoBase:33.30, precoJusto:27.87, precoJustoPROJ:34.41, classificacaoBase:'Justo',
    roic:10.3, roa:4.4, roe:14.6, plD:'8.0x', evD:'7.9x', dy:7.1, divAtivo:59.3, ret1a:76.1,
    pbD:'1.11x', pfcoD:'21.0x', fcfY:4.0, receita:'R$52.6B', ebitda:'R$14.3B', divida:'R$59.0B',
    veredicto:'COMPRA', pontuacao:16, momento:'MONITORAR',
    estrategia:'Compra gradual · Stop R$28.97 · Alvo R$27.87 (PJ)', alvoAnal:34.41,
    pessim:27.53, realista:34.41, otimista:41.29, rankSub:4,
    scores:[2,1,1,2,2,2,0,2,1,0,0,1,2] },

  { rank:10, ticker:'EGIE3', nome:'Engie Brasil Energia', subsetor:'Geração', icon:'⚡',
    precoBase:31.54, precoJusto:33.62, precoJustoPROJ:33.62, classificacaoBase:'Justo',
    roic:10.9, roa:5.4, roe:21.8, plD:'13.9x', evD:'11.3x', dy:2.3, divAtivo:44.6, ret1a:22.1,
    pbD:'2.82x', pfcoD:'10.8x', fcfY:4.3, receita:'R$12.9B', ebitda:'R$6.9B', divida:'R$29.8B',
    veredicto:'NEUTRO', pontuacao:15, momento:'NÃO RECOMENDADO',
    estrategia:'Monitorar — entrada somente em correção >10%', alvoAnal:30.95,
    pessim:26.90, realista:33.62, otimista:40.34, rankSub:2,
    scores:[2,1,2,1,1,0,1,1,1,2,1,1,1] },

  { rank:11, ticker:'AFLT3', nome:'Afluente Transmissão', subsetor:'Transmissão', icon:'🔗',
    precoBase:7.30, precoJusto:6.35, precoJustoPROJ:6.35, classificacaoBase:'Justo',
    roic:10.0, roa:6.9, roe:9.5, plD:'19.3x', evD:'14.2x', dy:5.2, divAtivo:11.1, ret1a:5.0,
    pbD:'1.86x', pfcoD:'9.8x', fcfY:0.0, receita:'R$1.2B', ebitda:'R$0.3B', divida:'R$0.7B',
    veredicto:'NEUTRO', pontuacao:15, momento:'NÃO RECOMENDADO',
    estrategia:'Monitorar — entrada somente em correção >10%', alvoAnal:7.50,
    pessim:5.08, realista:6.35, otimista:7.62, rankSub:3,
    scores:[1,2,1,1,1,1,2,1,2,2,0,1,0] },

  { rank:12, ticker:'REDE3', nome:'Rede Energia', subsetor:'Distribuição', icon:'🏘️',
    precoBase:6.30, precoJusto:5.81, precoJustoPROJ:5.81, classificacaoBase:'Justo',
    roic:13.6, roa:6.1, roe:30.8, plD:'11.4x', evD:'8.7x', dy:7.4, divAtivo:50.4, ret1a:15.0,
    pbD:'3.89x', pfcoD:'4.7x', fcfY:0.0, receita:'R$8.0B', ebitda:'R$2.5B', divida:'R$8.0B',
    veredicto:'NEUTRO', pontuacao:15, momento:'NÃO RECOMENDADO',
    estrategia:'Monitorar — entrada somente em correção >10%', alvoAnal:6.50,
    pessim:4.65, realista:5.81, otimista:6.97, rankSub:5,
    scores:[2,2,2,1,1,2,2,0,1,0,0,1,1] },

  { rank:13, ticker:'ENMT3', nome:'Energisa MT', subsetor:'Distribuição', icon:'🏘️',
    precoBase:46.16, precoJusto:46.92, precoJustoPROJ:46.92, classificacaoBase:'Justo',
    roic:12.4, roa:5.9, roe:21.3, plD:'12.6x', evD:'10.9x', dy:8.4, divAtivo:44.2, ret1a:20.0,
    pbD:'2.78x', pfcoD:'7.7x', fcfY:0.0, receita:'R$8.0B', ebitda:'R$2.5B', divida:'R$6.0B',
    veredicto:'NEUTRO', pontuacao:15, momento:'NÃO RECOMENDADO',
    estrategia:'Monitorar — entrada somente em correção >10%', alvoAnal:50.00,
    pessim:37.54, realista:46.92, otimista:56.30, rankSub:6,
    scores:[2,1,2,1,1,2,2,1,1,0,0,1,1] },

  { rank:14, ticker:'ENGI11', nome:'Energisa', subsetor:'Distribuição', icon:'🏘️',
    precoBase:49.82, precoJusto:44.62, precoJustoPROJ:44.62, classificacaoBase:'Justo',
    roic:8.3, roa:3.9, roe:14.5, plD:'7.8x', evD:'8.3x', dy:6.6, divAtivo:70.4, ret1a:25.9,
    pbD:'0.90x', pfcoD:'2.9x', fcfY:0.0, receita:'R$35.7B', ebitda:'R$8.0B', divida:'R$42.5B',
    veredicto:'NEUTRO', pontuacao:14, momento:'NÃO RECOMENDADO',
    estrategia:'Monitorar — entrada somente em correção >10%', alvoAnal:50.00,
    pessim:35.70, realista:44.62, otimista:53.54, rankSub:7,
    scores:[1,1,1,2,1,2,2,2,0,0,0,1,1] },

  { rank:15, ticker:'CBEE3', nome:'Ampla Energia', subsetor:'Distribuição', icon:'🏘️',
    precoBase:9.98, precoJusto:12.14, precoJustoPROJ:12.14, classificacaoBase:'Barato',
    roic:7.0, roa:-0.0, roe:-0.1, plD:'NM', evD:'7.5x', dy:4.2, divAtivo:50.1, ret1a:10.0,
    pbD:'0.46x', pfcoD:'7.9x', fcfY:0.0, receita:'R$8.0B', ebitda:'R$2.0B', divida:'R$8.0B',
    veredicto:'NEUTRO', pontuacao:14, momento:'NÃO RECOMENDADO',
    estrategia:'Monitorar — entrada somente em correção >10%', alvoAnal:12.00,
    pessim:9.71, realista:12.14, otimista:14.57, rankSub:8,
    scores:[1,0,0,0,2,1,2,2,1,1,2,2,0] },

  { rank:16, ticker:'ENEV3', nome:'Eneva', subsetor:'Geração', icon:'⚡',
    precoBase:23.91, precoJusto:29.77, precoJustoPROJ:29.77, classificacaoBase:'Barato',
    roic:6.3, roa:3.1, roe:8.1, plD:'39.5x', evD:'18.8x', dy:0.0, divAtivo:33.4, ret1a:20.0,
    pbD:'2.31x', pfcoD:'8.9x', fcfY:0.0, receita:'R$8.5B', ebitda:'R$3.8B', divida:'R$22.0B',
    veredicto:'NEUTRO', pontuacao:13, momento:'NÃO RECOMENDADO',
    estrategia:'Monitorar — entrada somente em correção >10%', alvoAnal:28.00,
    pessim:23.82, realista:29.77, otimista:35.72, rankSub:3,
    scores:[1,1,1,0,0,0,2,1,2,0,2,2,1] },

  { rank:17, ticker:'ISAE3', nome:'ISA Energia Brasil', subsetor:'Transmissão', icon:'🔗',
    precoBase:34.21, precoJusto:38.58, precoJustoPROJ:38.58, classificacaoBase:'Justo',
    roic:8.9, roa:5.5, roe:12.1, plD:'8.2x', evD:'8.3x', dy:4.4, divAtivo:44.1, ret1a:20.0,
    pbD:'0.95x', pfcoD:'-16.5x', fcfY:0.0, receita:'R$5.5B', ebitda:'R$2.2B', divida:'R$10.5B',
    veredicto:'NEUTRO', pontuacao:13, momento:'NÃO RECOMENDADO',
    estrategia:'Monitorar — entrada somente em correção >10%', alvoAnal:38.00,
    pessim:30.86, realista:38.58, otimista:46.30, rankSub:4,
    scores:[1,1,1,2,1,1,0,2,1,0,1,1,1] },

  { rank:18, ticker:'CPLE3', nome:'Copel', subsetor:'Distribuição', icon:'🏘️',
    precoBase:14.98, precoJusto:14.36, precoJustoPROJ:15.02, classificacaoBase:'Justo',
    roic:9.0, roa:4.6, roe:11.0, plD:'16.6x', evD:'12.0x', dy:3.7, divAtivo:31.5, ret1a:84.0,
    pbD:'1.92x', pfcoD:'14.6x', fcfY:6.6, receita:'R$26.1B', ebitda:'R$6.2B', divida:'R$20.3B',
    veredicto:'NEUTRO', pontuacao:13, momento:'NÃO RECOMENDADO',
    estrategia:'Monitorar — entrada somente em correção >10%', alvoAnal:15.02,
    pessim:12.02, realista:15.02, otimista:18.02, rankSub:9,
    scores:[1,1,1,1,1,1,1,1,2,0,0,1,2] },

  { rank:19, ticker:'COCE3', nome:'Coelce', subsetor:'Distribuição', icon:'🏘️',
    precoBase:38.00, precoJusto:38.24, precoJustoPROJ:38.24, classificacaoBase:'Justo',
    roic:10.6, roa:2.6, roe:7.6, plD:'7.7x', evD:'6.4x', dy:3.6, divAtivo:66.3, ret1a:15.0,
    pbD:'0.58x', pfcoD:'1.8x', fcfY:0.0, receita:'R$5.0B', ebitda:'R$1.5B', divida:'R$4.5B',
    veredicto:'NEUTRO', pontuacao:13, momento:'NÃO RECOMENDADO',
    estrategia:'Monitorar — entrada somente em correção >10%', alvoAnal:40.00,
    pessim:30.59, realista:38.24, otimista:45.89, rankSub:10,
    scores:[2,0,0,2,2,1,2,2,0,0,0,1,1] },

  { rank:20, ticker:'AXIA3', nome:'Eletrobras', subsetor:'Integrada', icon:'🏭',
    precoBase:55.97, precoJusto:59.01, precoJustoPROJ:59.01, classificacaoBase:'Justo',
    roic:2.4, roa:2.3, roe:5.5, plD:'24.3x', evD:'30.5x', dy:8.1, divAtivo:33.2, ret1a:80.9,
    pbD:'1.34x', pfcoD:'11.0x', fcfY:0.0, receita:'R$41.3B', ebitda:'R$7.5B', divida:'R$79.1B',
    veredicto:'NEUTRO', pontuacao:13, momento:'NÃO RECOMENDADO',
    estrategia:'Monitorar — entrada somente em correção >10%', alvoAnal:58.00,
    pessim:47.21, realista:59.01, otimista:70.81, rankSub:3,
    scores:[0,0,0,0,0,2,1,2,2,2,1,1,2] },

  { rank:21, ticker:'ENGI3', nome:'Energisa ON', subsetor:'Integrada', icon:'🏭',
    precoBase:12.27, precoJusto:11.64, precoJustoPROJ:11.64, classificacaoBase:'Justo',
    roic:8.3, roa:3.9, roe:14.5, plD:'7.8x', evD:'8.3x', dy:5.3, divAtivo:70.4, ret1a:25.0,
    pbD:'0.90x', pfcoD:'2.9x', fcfY:0.0, receita:'R$14.0B', ebitda:'R$3.5B', divida:'R$9.0B',
    veredicto:'NEUTRO', pontuacao:13, momento:'NÃO RECOMENDADO',
    estrategia:'Monitorar — entrada somente em correção >10%', alvoAnal:13.00,
    pessim:9.31, realista:11.64, otimista:13.97, rankSub:4,
    scores:[1,1,1,2,1,1,2,2,0,0,0,1,1] },

  { rank:22, ticker:'EQTL3', nome:'Equatorial Energia', subsetor:'Distribuição', icon:'🏘️',
    precoBase:39.08, precoJusto:63.89, precoJustoPROJ:63.89, classificacaoBase:'Pechincha',
    roic:8.0, roa:2.1, roe:8.0, plD:'40.7x', evD:'12.0x', dy:1.3, divAtivo:0.0, ret1a:35.2,
    pbD:'1.72x', pfcoD:'12.2x', fcfY:7.3, receita:'R$51.3B', ebitda:'R$11.5B', divida:'R$63.5B',
    veredicto:'NEUTRO', pontuacao:12, momento:'NÃO RECOMENDADO',
    estrategia:'Monitorar — entrada somente em correção >10%', alvoAnal:47.32,
    pessim:51.11, realista:63.89, otimista:76.67, rankSub:11,
    scores:[1,0,0,0,1,0,1,1,2,0,2,2,2] },

  { rank:23, ticker:'LIGT3', nome:'Light', subsetor:'Distribuição', icon:'🏘️',
    precoBase:4.61, precoJusto:6.45, precoJustoPROJ:6.45, classificacaoBase:'Barato',
    roic:6.1, roa:0.8, roe:4.0, plD:'8.1x', evD:'8.5x', dy:0.0, divAtivo:85.4, ret1a:10.0,
    pbD:'0.32x', pfcoD:'0.9x', fcfY:0.0, receita:'R$9.8B', ebitda:'R$2.5B', divida:'R$9.0B',
    veredicto:'NEUTRO', pontuacao:12, momento:'NÃO RECOMENDADO',
    estrategia:'Monitorar — entrada somente em correção >10%', alvoAnal:7.00,
    pessim:5.16, realista:6.45, otimista:7.74, rankSub:12,
    scores:[1,0,0,2,1,0,2,2,0,0,2,2,0] },

  { rank:24, ticker:'EMAE3', nome:'EMAE', subsetor:'Geração', icon:'⚡',
    precoBase:150.00, precoJusto:107.30, precoJustoPROJ:107.30, classificacaoBase:'Caro',
    roic:-2.7, roa:13.8, roe:23.4, plD:'9.8x', evD:'-56.9x', dy:0.0, divAtivo:0.1, ret1a:5.0,
    pbD:'2.00x', pfcoD:'29.8x', fcfY:0.0, receita:'R$0.8B', ebitda:'R$0.2B', divida:'R$0.5B',
    veredicto:'VENDA', pontuacao:11, momento:'NÃO RECOMENDADO',
    estrategia:'EVITAR ou zerar posição · Aguardar melhora de fundamentos', alvoAnal:100.00,
    pessim:85.84, realista:107.30, otimista:128.76, rankSub:4,
    scores:[0,2,2,2,0,0,0,1,2,2,0,0,0] },

  { rank:25, ticker:'AURE3', nome:'Auren Energia', subsetor:'Geração', icon:'⚡',
    precoBase:11.46, precoJusto:12.74, precoJustoPROJ:12.74, classificacaoBase:'Justo',
    roic:3.3, roa:-1.1, roe:-3.9, plD:'-18.2x', evD:'15.1x', dy:0.5, divAtivo:64.9, ret1a:15.0,
    pbD:'0.97x', pfcoD:'8.7x', fcfY:-0.0, receita:'R$10.5B', ebitda:'R$4.2B', divida:'R$15.0B',
    veredicto:'VENDA', pontuacao:10, momento:'NÃO RECOMENDADO',
    estrategia:'EVITAR ou zerar posição · Aguardar melhora de fundamentos', alvoAnal:12.00,
    pessim:10.19, realista:12.74, otimista:15.29, rankSub:5,
    scores:[0,0,0,0,0,0,2,2,1,2,1,1,1] },

  { rank:26, ticker:'RNEW3', nome:'Renova Energia', subsetor:'Geração', icon:'⚡',
    precoBase:1.09, precoJusto:1.25, precoJustoPROJ:1.25, classificacaoBase:'Justo',
    roic:-5.5, roa:-5.6, roe:-15.9, plD:'-2.4x', evD:'-7.8x', dy:0.0, divAtivo:64.6, ret1a:-20.0,
    pbD:'0.32x', pfcoD:'11.6x', fcfY:0.0, receita:'R$0.5B', ebitda:'R$0.1B', divida:'R$0.8B',
    veredicto:'VENDA', pontuacao:8, momento:'NÃO RECOMENDADO',
    estrategia:'EVITAR ou zerar posição · Aguardar melhora de fundamentos', alvoAnal:1.50,
    pessim:1.00, realista:1.25, otimista:1.50, rankSub:6,
    scores:[0,0,0,0,0,0,1,2,1,2,1,1,0] },

  { rank:27, ticker:'RIOS3', nome:'Rio Alto Energias', subsetor:'Geração', icon:'⚡',
    precoBase:30.50, precoJusto:20.52, precoJustoPROJ:20.52, classificacaoBase:'Caro',
    roic:0.0, roa:-22.7, roe:0.0, plD:'-4.6x', evD:'-59.9x', dy:0.0, divAtivo:45.1, ret1a:-10.0,
    pbD:'-2.30x', pfcoD:'42.8x', fcfY:0.0, receita:'R$1.2B', ebitda:'R$0.3B', divida:'R$1.0B',
    veredicto:'VENDA', pontuacao:5, momento:'NÃO RECOMENDADO',
    estrategia:'EVITAR ou zerar posição · Aguardar melhora de fundamentos', alvoAnal:20.00,
    pessim:16.42, realista:20.52, otimista:24.62, rankSub:7,
    scores:[0,0,0,0,0,0,0,2,1,2,0,0,0] }
];

const SUBSETORES_EN = [
  { nome:'🔗 Transmissão', tickers:['TAEE3','ALUP11','AFLT3','ISAE3'] },
  { nome:'🏘️ Distribuição', tickers:['EQPA3','CEEB3','CPFE3','NEOE3','REDE3','ENMT3','ENGI11','CBEE3','CPLE3','COCE3','EQTL3','LIGT3'] },
  { nome:'🏭 Integrada', tickers:['CMIG4','CLSC3','AXIA3','ENGI3'] },
  { nome:'⚡ Geração', tickers:['GEPA3','EGIE3','ENEV3','EMAE3','AURE3','RNEW3','RIOS3'] }
];

// ══════════════════════════════════════════════════════════════
//  NORMALIZAÇÃO DOS CAMPOS (adapter ENERGIA → template padrão)
// ══════════════════════════════════════════════════════════════
COMPANIES_EN.forEach(c => {
  // Preço justo e classificação
  c.pjBase    = c.pjBase    ?? c.precoJusto ?? 0;
  c.precoBase = c.precoBase ?? 0;
  c.classifBase = c.classifBase ?? c.classificacaoBase ?? 'Justo';

  // Indicadores string (com %)
  c.roic   = c.roic   !== undefined ? (typeof c.roic   === 'number' ? c.roic.toFixed(1)+'%'   : String(c.roic))   : 'N/D';
  c.roa    = c.roa    !== undefined ? (typeof c.roa    === 'number' ? c.roa.toFixed(1)+'%'    : String(c.roa))    : 'N/D';
  c.roe    = c.roe    !== undefined ? (typeof c.roe    === 'number' ? c.roe.toFixed(1)+'%'    : String(c.roe))    : 'N/D';
  c.dy     = c.dy     !== undefined ? (typeof c.dy     === 'number' ? c.dy.toFixed(1)+'%'     : String(c.dy))     : 'N/D';
  c.divAtivo = c.divAtivo !== undefined ? (typeof c.divAtivo === 'number' ? c.divAtivo.toFixed(1)+'%' : String(c.divAtivo)) : 'N/D';
  c.ret1a  = c.ret1a  !== undefined ? (typeof c.ret1a  === 'number' ? (c.ret1a >= 0 ? '+' : '') + c.ret1a.toFixed(1)+'%' : String(c.ret1a)) : 'N/D';

  // Valuation múltiplos
  c.pl     = c.pl     ?? c.plD    ?? 'N/D';
  c.evEbit = c.evEbit ?? c.evD    ?? 'N/D';
  c.pbook  = c.pbook  ?? c.pbD    ?? 'N/D';
  c.pfco   = c.pfco   ?? c.pfcoD  ?? 'N/D';
  c.crescDiv = c.crescDiv ?? 'N/D';

  // Pontuação
  c.scoreNum = c.scoreNum ?? c.pontuacao ?? 0;
  c.score    = c.score    ?? (c.scoreNum + '/26');

  // Heatmap
  c.hm = c.hm ?? c.scores ?? [];

  // Cenários
  if (typeof c.pessim === 'number' && !c.pess)  c.pess = 'R$' + c.pessim.toFixed(2).replace('.',',');
  if (typeof c.realista === 'number' && !c.real) c.real = 'R$' + c.realista.toFixed(2).replace('.',',');
  if (typeof c.otimista === 'number' && !c.otim) c.otim = 'R$' + c.otimista.toFixed(2).replace('.',',');
  c.pess = c.pess ?? fmtPriceRaw(c.pjBase * 0.8);
  c.real = c.real ?? fmtPriceRaw(c.pjBase);
  c.otim = c.otim ?? fmtPriceRaw(c.pjBase * 1.2);

  // Alvo analistas
  if (typeof c.alvoAnal === 'number') c.alvoAnal = 'R$' + c.alvoAnal.toFixed(2).replace('.',',');
  c.alvoAnal = c.alvoAnal ?? 'N/D';

  // Veredicto com emoji
  if (c.veredicto && !c.veredicto.includes('✅') && !c.veredicto.includes('⚠️') && !c.veredicto.includes('🔴')) {
    if (c.veredicto.toUpperCase().includes('COMPRA FORTE')) c.veredicto = '✅ COMPRA FORTE';
    else if (c.veredicto.toUpperCase().includes('COMPRA'))  c.veredicto = '✅ COMPRA';
    else if (c.veredicto.toUpperCase().includes('VENDA'))   c.veredicto = '🔴 VENDA / EVITAR';
    else if (c.veredicto.toUpperCase().includes('EVITAR'))  c.veredicto = '🔴 VENDA / EVITAR';
    else c.veredicto = '⚠️ NEUTRO';
  }
  c.veredicto = c.veredicto ?? '⚠️ NEUTRO';

  // Momento
  c.momento = c.momento ?? (c.scoreNum >= 20 ? 'OPORTUNIDADE DE COMPRA' : c.scoreNum >= 16 ? 'MONITORAR' : 'NÃO RECOMENDADO');

  // Estratégia detalhada
  c.estrategiaDetalhe = c.estrategiaDetalhe ?? c.estrategia ?? 'Consultar estratégia do setor';
  c.estrategia        = c.estrategia ?? c.estrategiaDetalhe;

  // Tip (resumo rápido)
  c.tip = c.tip ?? (c.nome + ' — ROIC ' + c.roic + ', pontuação ' + c.score + '. ' + c.classifBase + ' vs Preço Justo.');

  // Análise detalhada — gerada dinamicamente se ausente
  if (!c.pontos_pos) {
    const bons = [];
    const maus = [];
    if (c.hm[0] === 2) bons.push('• ROIC ' + c.roic + ' — excelente retorno sobre capital investido');
    else if (c.hm[0] === 0) maus.push('• ROIC ' + c.roic + ' — retorno sobre capital abaixo do ideal');
    if (c.hm[2] === 2) bons.push('• ROE ' + c.roe + ' — alta rentabilidade sobre patrimônio líquido');
    else if (c.hm[2] === 0) maus.push('• ROE ' + c.roe + ' — rentabilidade sobre PL abaixo do esperado');
    if (c.hm[3] === 2) bons.push('• P/L ' + c.pl + ' — múltiplo atrativo de preço/lucro');
    else if (c.hm[3] === 0) maus.push('• P/L ' + c.pl + ' — múltiplo de preço/lucro elevado');
    if (c.hm[5] === 2) bons.push('• Dividend Yield ' + c.dy + ' — rendimento de dividendos excelente');
    else if (c.hm[5] === 0) maus.push('• Dividend Yield ' + c.dy + ' — rendimento de dividendos baixo');
    if (c.hm[8] === 2) bons.push('• Dívida/Ativo ' + c.divAtivo + ' — alavancagem sob controle');
    else if (c.hm[8] === 0) maus.push('• Dívida/Ativo ' + c.divAtivo + ' — alavancagem elevada, monitorar');
    if (c.hm[10] >= 1) bons.push('• Upside positivo vs Preço Justo R$' + (c.pjBase||0).toFixed(2) + ' — potencial de valorização');
    c.pontos_pos = bons.length ? bons.join('\n') : '• Empresa com fundamentos dentro da média do setor elétrico';
    c.pontos_neg = maus.length ? maus.join('\n') : '• Monitorar evolução dos indicadores de rentabilidade e alavancagem';
  }
  if (!c.fco) c.fco = 'Receita: ' + (c.receita||'N/D') + ' · EBITDA: ' + (c.ebitda||'N/D') + ' · Dívida total: ' + (c.divida||'N/D') + '. P/FCO: ' + c.pfco + '. Geração de caixa típica do setor regulado de energia elétrica, com contratos de longo prazo que garantem previsibilidade de receitas.';
  if (!c.dcf) c.dcf = 'P/L: ' + c.pl + ' · EV/EBIT: ' + c.evEbit + ' · P/Book: ' + c.pbook + '. PJ: R$' + (c.pjBase||0).toFixed(2) + ' (classificação: ' + c.classifBase + '). Valuation setorial com WACC regulatório entre 9-10%. Setor com previsibilidade de fluxos por concessões de longo prazo.';
});

function fmtPriceRaw(v) { return 'R$' + (v||0).toFixed(2).replace('.',','); }

// FACTOR_CRITERIA global

// ══════════════════════════════════════════════════════════════
//  COTAÇÕES AO VIVO
// ══════════════════════════════════════════════════════════════
// livePrices global
// lastFetchTime global
// marketOpen global

/* REMOVED isMarketOpen */

async function _NOOP_fetchAllPrices() {
  const btn = document.getElementById('updateBtn');
  const statusEl = document.getElementById('priceStatus');
  const marketEl = document.getElementById('marketStatus');
  btn.classList.add('loading');
  document.getElementById('updateBtnText').textContent = 'Buscando...';
  const tickers = COMPANIES_EN.map(c => c.ticker);
  marketOpen = isMarketOpen();
  marketEl.textContent = marketOpen ? '🟢 Mercado Aberto (B3)' : '🔴 Mercado Fechado — Último Fechamento';
  try {
    const tickerStr = tickers.join(',');
    const url = `https://brapi.dev/api/quote/${tickerStr}?range=1d&interval=1d&fundamental=false&dividends=false`;
    const res = await fetch(url, { signal: AbortSignal.timeout(8000) });
    if (!res.ok) throw new Error('brapi error');
    const data = await res.json();
    if (data.results) {
      data.results.forEach(r => { if (r.regularMarketPrice) livePrices[r.symbol] = r.regularMarketPrice; });
    }
    lastFetchTime = new Date();
    statusEl.textContent = `${marketOpen ? '🟢 Ao vivo' : '🔴 Fechamento'} · ${lastFetchTime.toLocaleTimeString('pt-BR')}`;
    statusEl.className = 'price-status live';
  } catch(e1) {
    try {
      for (const ticker of tickers) {
        try {
          const yahooTicker = ticker + '.SA';
          const proxyUrl = `https://corsproxy.io/?${encodeURIComponent('https://query1.finance.yahoo.com/v8/finance/chart/' + yahooTicker + '?interval=1d&range=1d')}`;
          const res2 = await fetch(proxyUrl, { signal: AbortSignal.timeout(5000) });
          const data2 = await res2.json();
          const price = data2?.chart?.result?.[0]?.meta?.regularMarketPrice;
          if (price) livePrices[ticker] = price;
        } catch {}
      }
      lastFetchTime = new Date();
      statusEl.textContent = `Via Yahoo · ${lastFetchTime.toLocaleTimeString('pt-BR')}`;
      statusEl.className = 'price-status live';
    } catch(e2) {
      statusEl.textContent = 'Cotação ao vivo indisponível — usando dados base';
      statusEl.className = 'price-status';
    }
  }
  btn.classList.remove('loading');
  document.getElementById('updateBtnText').textContent = '⟳ Atualizar Cotações';
  // renderAll() handled globally
  updateTopUpside();
}

/* REMOVED getPrice */
/* REMOVED getUpside */
/* REMOVED fmtPrice */
/* REMOVED fmtPct */
/* REMOVED upsideClass */
/* REMOVED badgeClass */
/* REMOVED classifHTML */
/* REMOVED scoreColor */
/* REMOVED scoreEmoji */

/* REMOVED updateTopUpside */ function _NOOP_updateTopUpside() {
  const sorted = COMPANIES_EN.map(c => ({ ticker:c.ticker, upside:getUpside(c.ticker) })).sort((a,b) => b.upside - a.upside);
  const top2 = sorted.slice(0,2);
  document.getElementById('topUpsideBar').textContent = top2.map(x => `${x.ticker} ${fmtPct(x.upside)}`).join(' · ');
}

/* REMOVED showTab */ function _NOOP_showTab() {
  document.querySelectorAll('.section').forEach(s => s.classList.remove('active'));
  document.querySelectorAll('.tab-btn').forEach(b => b.classList.remove('active'));
  document.getElementById('tab-' + id).classList.add('active');
  btn.classList.add('active');
}

// ══════════════════════════════════════════════════════════════
//  RENDER RANKING
// ══════════════════════════════════════════════════════════════
/* REMOVED renderRanking */ function _NOOP_renderRanking() {
  const tbody = document.getElementById('rankingTbody');
  let html = '';
  SUBSETORES_EN.forEach(sub => {
    const comps = sub.tickers.map(t => COMPANIES_EN.find(c => c.ticker === t)).filter(Boolean);
    html += `<tr class="subsetor-header"><td colspan="18">${sub.nome}</td></tr>`;
    comps.forEach(c => {
      const price = getPrice(c.ticker);
      const upside = getUpside(c.ticker);
      const sc = c.scoreNum;
      const barW = Math.round(sc / 26 * 100);
      const barColor = sc >= 20 ? '#166534' : sc >= 16 ? '#16A34A' : sc >= 12 ? '#D97706' : '#DC2626';
      html += `<tr>
        <td class="rank-num">${c.rank}</td>
        <td><span class="ticker-chip">${c.ticker}</span></td>
        <td style="font-weight:500;min-width:140px">${c.nome}</td>
        <td style="font-size:12px;color:var(--slate)">${c.icon||''} ${c.subsetor||''}</td>
        <td class="val-live" id="price-${c.ticker}">${fmtPrice(price)}</td>
        <td class="val-price">${fmtPrice(c.pjBase)}</td>
        <td>${classifHTML(c)}</td>
        <td><span class="${upsideClass(upside)}" id="upside-${c.ticker}">${fmtPct(upside)}</span></td>
        <td class="val-mono">${c.roic}</td>
        <td class="val-mono">${c.roa}</td>
        <td class="val-mono">${c.roe}</td>
        <td class="val-mono">${c.pl}</td>
        <td class="val-mono">${c.evEbit}</td>
        <td class="val-mono">${c.dy}</td>
        <td class="val-mono">${c.divAtivo}</td>
        <td class="val-mono" style="color:${(String(c.ret1a)).startsWith('+') ? 'var(--green-700)' : 'var(--red)'}">${c.ret1a}</td>
        <td><span class="${badgeClass(c.veredicto)}">${c.veredicto}</span></td>
        <td>
          <div class="score-display">
            <div class="score-bar-wrap"><div class="score-bar" style="width:${barW}%;background:${barColor}"></div></div>
            <span class="score-text" style="color:${barColor}">${c.score}</span>
          </div>
        </td>
      </tr>`;
    });
  });
  tbody.innerHTML = html;
}

// ══════════════════════════════════════════════════════════════
//  RENDER FACTOR DETALHADO
// ══════════════════════════════════════════════════════════════
/* REMOVED renderFactor */ function _NOOP_renderFactor() {
  const el = document.getElementById('factorContent');
  let html = '';
  SUBSETORES_EN.forEach(sub => {
    const comps = sub.tickers.map(t => COMPANIES_EN.find(c => c.ticker === t)).filter(Boolean);
    html += `<div class="heatmap-wrap"><div class="heatmap-header">${sub.nome}</div>
    <div style="overflow-x:auto"><table class="heatmap-table"><thead><tr>
      <th style="text-align:left">INDICADOR / FATOR</th>`;
    comps.forEach(c => { html += `<th>#${c.rank}<br><span style="font-family:JetBrains Mono,monospace;font-size:11px">${c.ticker}</span><br>${c.score}</th>`; });
    html += '</tr></thead><tbody>';
    FACTOR_CRITERIA.forEach((crit, fi) => {
      html += `<tr><td>${crit}</td>`;
      comps.forEach(c => {
        const s = c.hm[fi] ?? 0;
        html += `<td class="${scoreColor(s)}">${scoreEmoji(s)}<br>${s}</td>`;
      });
      html += '</tr>';
    });
    html += '<tr><td>▶ PONTUAÇÃO TOTAL (0–26)</td>';
    comps.forEach(c => { html += `<td>${c.score}</td>`; });
    html += '</tr></tbody></table></div></div>';
  });
  el.innerHTML = html;
}

// ══════════════════════════════════════════════════════════════
//  RENDER TABELA MESTRA
// ══════════════════════════════════════════════════════════════
/* REMOVED renderMestra */ function _NOOP_renderMestra() {
  const thead = document.getElementById('mestraThead');
  const tbody = document.getElementById('mestraTbody');
  const comps = COMPANIES_EN;
  let hh = '<tr><th class="sticky-col" style="min-width:200px">INDICADOR</th>';
  comps.forEach(c => { hh += `<th>#${c.rank}<br>${c.ticker}</th>`; });
  hh += '</tr>';
  thead.innerHTML = hh;
  const rows = [
    { label:'  PREÇO & CLASSIFICAÇÃO', group:true },
    { label:'Preço Atual (R$)', fn: c => `<span class="val-live" id="mestra-price-${c.ticker}">${fmtPrice(getPrice(c.ticker))}</span>` },
    { label:'Preço Justo / Fair Value', fn: c => `<span class="val-price">${fmtPrice(c.pjBase)}</span>` },
    { label:'Classificação FV', fn: c => classifHTML(c) },
    { label:'Upside até PJ', fn: c => `<span class="${upsideClass(getUpside(c.ticker))}" id="mestra-upside-${c.ticker}">${fmtPct(getUpside(c.ticker))}</span>` },
    { label:'Alvo Analistas', fn: c => `<span class="val-mono">${c.alvoAnal}</span>` },
    { label:'  RENTABILIDADE', group:true },
    { label:'ROIC', fn: c => c.roic },
    { label:'ROA',  fn: c => c.roa },
    { label:'ROE',  fn: c => c.roe },
    { label:'  VALUATION', group:true },
    { label:'P/L',     fn: c => c.pl },
    { label:'EV/EBIT', fn: c => c.evEbit },
    { label:'P/Book',  fn: c => c.pbook },
    { label:'P/FCO',   fn: c => c.pfco },
    { label:'  DIVIDENDOS & RETORNO', group:true },
    { label:'Dividend Yield', fn: c => c.dy },
    { label:'Retorno 1 Ano',  fn: c => `<span style="color:${String(c.ret1a).startsWith('+') ? 'var(--green-700)' : 'var(--red)'}">${c.ret1a}</span>` },
    { label:'  SAÚDE FINANCEIRA', group:true },
    { label:'Dívida/Ativo',  fn: c => c.divAtivo },
    { label:'Cresc. Dívida', fn: c => c.crescDiv },
    { label:'Dívida Total',  fn: c => c.divida||'N/D' },
    { label:'Receita LTM',   fn: c => c.receita||'N/D' },
    { label:'EBITDA LTM',    fn: c => c.ebitda||'N/D' },
    { label:'  FACTOR INVEST', group:true },
    { label:'Pontuação Total', fn: c => `<strong>${c.score}</strong>` },
    { label:'Veredicto', fn: c => `<span class="${badgeClass(c.veredicto)}">${c.veredicto}</span>` },
    { label:'Sub-Setor', fn: c => `${c.icon||''} ${c.subsetor||''}` }
  ];
  let tb = '';
  rows.forEach(r => {
    if (r.group) {
      tb += `<tr class="subsetor-header"><td class="sticky-col" colspan="${comps.length+1}" style="font-size:11px;letter-spacing:0.5px">${r.label}</td></tr>`;
    } else {
      tb += `<tr><td class="sticky-col" style="font-weight:500;color:var(--slate);font-size:12px">${r.label}</td>`;
      comps.forEach(c => { tb += `<td style="text-align:center;font-size:12px;font-family:JetBrains Mono,monospace">${r.fn(c)}</td>`; });
      tb += '</tr>';
    }
  });
  tbody.innerHTML = tb;
}

// ══════════════════════════════════════════════════════════════
//  RENDER PROJEÇÕES
// ══════════════════════════════════════════════════════════════
/* REMOVED renderProjecoes */ function _NOOP_renderProjecoes() {
  const el = document.getElementById('projContent');
  let html = '';
  SUBSETORES_EN.forEach(sub => {
    html += `<div style="grid-column:1/-1;background:var(--green-50);border:1px solid var(--green-100);border-left:4px solid var(--green-600);border-radius:0 8px 8px 0;padding:8px 14px;font-weight:700;color:var(--green-800);font-size:14px;">${sub.nome}</div>`;
    const comps = sub.tickers.map(t => COMPANIES_EN.find(c => c.ticker === t)).filter(Boolean);
    comps.forEach(c => {
      const price = getPrice(c.ticker);
      const upside = getUpside(c.ticker);
      const pessVal = c.pessim ?? (c.pjBase * 0.8);
      const realVal = c.pjBase;
      const otimVal = c.otimista ?? (c.pjBase * 1.2);
      const rPess = price ? ((pessVal - price) / price * 100).toFixed(1) : '0.0';
      const rReal = price ? ((realVal - price) / price * 100).toFixed(1) : '0.0';
      const rOtim = price ? ((otimVal - price) / price * 100).toFixed(1) : '0.0';
      html += `<div class="proj-card">
        <div class="proj-card-header">
          <div>
            <div class="proj-card-title">${c.nome}</div>
            <div style="font-size:11px;opacity:0.75;margin-top:2px">${c.icon||''} ${c.subsetor||''}</div>
          </div>
          <div style="text-align:right">
            <span class="proj-card-ticker">${c.ticker}</span><br>
            <span class="${badgeClass(c.veredicto)}" style="font-size:11px;margin-top:4px">${c.veredicto}</span>
          </div>
        </div>
        <div class="proj-card-body">
          <div class="proj-row"><span class="proj-label">Preço Atual (ao vivo)</span><span class="proj-val val-live" id="proj-price-${c.ticker}">${fmtPrice(price)}</span></div>
          <div class="proj-row"><span class="proj-label">Preço Justo (PJ)</span><span class="proj-val">${fmtPrice(c.pjBase)}</span></div>
          <div class="proj-row"><span class="proj-label">Upside vs PJ</span><span class="proj-val ${upsideClass(upside)}" id="proj-upside-${c.ticker}">${fmtPct(upside)}</span></div>
          <div class="proj-row"><span class="proj-label">Alvo Analistas</span><span class="proj-val">${c.alvoAnal}</span></div>
          <div class="proj-row"><span class="proj-label">Pontuação Factor</span><span class="proj-val">${c.score}</span></div>
          <p style="font-size:11px;color:var(--slate);margin:8px 0 4px;line-height:1.4">⚡ ${c.tip}</p>
          <div class="proj-scenarios">
            <div class="scenario-box scen-pess"><div class="sc-name">Pessimista</div><div class="sc-alvo">${c.pess}</div><div class="sc-ret" id="proj-pess-${c.ticker}">${rPess >= 0 ? '+' : ''}${rPess}%</div></div>
            <div class="scenario-box scen-real"><div class="sc-name">Realista</div><div class="sc-alvo">${fmtPrice(c.pjBase)}</div><div class="sc-ret" id="proj-real-${c.ticker}">${rReal >= 0 ? '+' : ''}${rReal}%</div></div>
            <div class="scenario-box scen-otim"><div class="sc-name">Otimista</div><div class="sc-alvo">${c.otim}</div><div class="sc-ret" id="proj-otim-${c.ticker}">${rOtim >= 0 ? '+' : ''}${rOtim}%</div></div>
          </div>
        </div>
      </div>`;
    });
  });
  el.innerHTML = html;
}

// ══════════════════════════════════════════════════════════════
//  RENDER ANÁLISE DETALHADA
// ══════════════════════════════════════════════════════════════
/* REMOVED renderAnalise */ function _NOOP_renderAnalise() {
  const el = document.getElementById('analiseContent');
  let html = '';
  SUBSETORES_EN.forEach(sub => {
    html += `<div style="background:var(--green-50);border:1px solid var(--green-100);border-left:4px solid var(--green-600);border-radius:0 8px 8px 0;padding:10px 16px;font-weight:700;color:var(--green-800);font-size:15px;margin-bottom:4px;">${sub.nome}</div>`;
    const comps = sub.tickers.map(t => COMPANIES_EN.find(c => c.ticker === t)).filter(Boolean);
    comps.forEach(c => {
      const price = getPrice(c.ticker);
      const upside = getUpside(c.ticker);
      const sc = c.scoreNum;
      const sColor = sc >= 20 ? '#166534' : sc >= 16 ? '#16A34A' : sc >= 12 ? '#D97706' : '#DC2626';
      html += `<div class="analise-card">
        <div class="analise-card-header">
          <div>
            <span class="analise-ticker">${c.ticker}</span>
            <span class="analise-nome" style="margin-left:10px">${c.nome}</span><br>
            <span style="font-size:12px;opacity:0.8;margin-top:4px;display:block">${c.icon||''} ${c.subsetor||''}</span>
          </div>
          <div style="text-align:right">
            <span class="analise-score">${c.score} · ${c.veredicto}</span><br>
            <span style="font-size:12px;margin-top:6px;display:block;opacity:0.85">Preço Justo: ${fmtPrice(c.pjBase)}</span>
          </div>
        </div>
        <div class="analise-card-body">
          <div class="analise-summary">
            <div class="analise-kpi"><div class="kpi-label">Preço Atual</div><div class="kpi-val" id="analise-price-${c.ticker}">${fmtPrice(price)}</div></div>
            <div class="analise-kpi"><div class="kpi-label">Upside/Down</div><div class="kpi-val ${upsideClass(upside)}" id="analise-upside-${c.ticker}">${fmtPct(upside)}</div></div>
            <div class="analise-kpi"><div class="kpi-label">ROIC</div><div class="kpi-val">${c.roic}</div></div>
            <div class="analise-kpi"><div class="kpi-label">ROE</div><div class="kpi-val">${c.roe}</div></div>
            <div class="analise-kpi"><div class="kpi-label">P/L</div><div class="kpi-val">${c.pl}</div></div>
            <div class="analise-kpi"><div class="kpi-label">EV/EBIT</div><div class="kpi-val">${c.evEbit}</div></div>
            <div class="analise-kpi"><div class="kpi-label">Div. Yield</div><div class="kpi-val">${c.dy}</div></div>
            <div class="analise-kpi"><div class="kpi-label">Dív/Ativo</div><div class="kpi-val">${c.divAtivo}</div></div>
          </div>
          <div class="analise-section">
            <div class="analise-section-title">✅ PONTOS POSITIVOS</div>
            <div class="analise-section-content">${c.pontos_pos}</div>
          </div>
          <div class="analise-section">
            <div class="analise-section-title" style="background:#FEF2F2;border-left-color:#DC2626;color:#991B1B">⚠️ PONTOS NEGATIVOS</div>
            <div class="analise-section-content neg">${c.pontos_neg}</div>
          </div>
          <div class="analise-section">
            <div class="analise-section-title" style="background:#EFF6FF;border-left-color:#2563EB;color:#1D4ED8">💰 FLUXO DE CAIXA</div>
            <div class="analise-section-content" style="color:var(--slate)">${c.fco}</div>
          </div>
          <div class="analise-section">
            <div class="analise-section-title" style="background:#F5F3FF;border-left-color:#7C3AED;color:#5B21B6">📊 VALUATION / DCF</div>
            <div class="analise-section-content" style="color:var(--slate)">${c.dcf}</div>
          </div>
          <div class="analise-section">
            <div class="analise-section-title" style="background:#ECFDF5;border-left-color:#059669;color:#065F46">🎯 ESTRATÉGIA</div>
            <div class="analise-section-content" style="font-weight:600;color:var(--green-800)">${c.estrategiaDetalhe}</div>
          </div>
        </div>
      </div>`;
    });
  });
  el.innerHTML = html;
}

// ══════════════════════════════════════════════════════════════
//  RENDER QUADRO DECISÓRIO
// ══════════════════════════════════════════════════════════════
/* REMOVED renderDecisorio */ function _NOOP_renderDecisorio() {
  const el = document.getElementById('decisorioContent');
  let html = '';
  SUBSETORES_EN.forEach(sub => {
    const comps = sub.tickers.map(t => COMPANIES_EN.find(c => c.ticker === t)).filter(Boolean);
    html += `<div class="decisorio-section">
      <div class="decisorio-header">${sub.nome}</div>
      <div style="overflow-x:auto">
      <table class="decisorio-table"><thead><tr>
        <th>Rank</th><th>Ticker</th><th>Nome</th><th>Pontuação</th>
        <th>Veredicto</th><th>Momento</th><th>Preço Atual</th><th>Preço Justo</th>
        <th>Upside/Down</th><th>Classificação</th><th>Estratégia</th>
      </tr></thead><tbody>`;
    comps.forEach((c, idx) => {
      const price = getPrice(c.ticker);
      const upside = getUpside(c.ticker);
      html += `<tr>
        <td class="rank-num">${idx+1}</td>
        <td><span class="ticker-chip">${c.ticker}</span></td>
        <td style="font-weight:500;min-width:130px">${c.nome}</td>
        <td><strong>${c.score}</strong></td>
        <td><span class="${badgeClass(c.veredicto)}">${c.veredicto}</span></td>
        <td style="font-size:12px;color:var(--slate)">${c.momento}</td>
        <td class="val-live" id="dec-price-${c.ticker}">${fmtPrice(price)}</td>
        <td class="val-price">${fmtPrice(c.pjBase)}</td>
        <td><span class="${upsideClass(upside)}" id="dec-upside-${c.ticker}">${fmtPct(upside)}</span></td>
        <td>${classifHTML(c)}</td>
        <td class="strategy-text">${c.estrategia}</td>
      </tr>`;
    });
    html += '</tbody></table></div></div>';
  });
  el.innerHTML = html;
}

/* REMOVED renderAll */ function _NOOP_renderAll() {
  renderRanking();
  renderFactor();
  renderMestra();
  renderProjecoes();
  renderAnalise();
  renderDecisorio();
  updateTopUpside();
}

/* REMOVED scheduleRefresh */ function _NOOP_scheduleRefresh() {
  const interval = isMarketOpen() ? 90000 : 300000;
  // scheduleRefresh handled globally
}

// renderAll() handled globally
// fetchAllPrices() handled globally

const EN_COMPANIES = COMPANIES_EN;
const EN_SUBSETORES = SUBSETORES_EN;
</script>

<script>
// ─── PETRÓLEO & GÁS DATA ────────────────────────────────

// ══════════════════════════════════════════════════════════════
//  DADOS — PETRÓLEO, GÁS E BIOCOMB. B3
// ══════════════════════════════════════════════════════════════
const COMPANIES_PET = [
  { rank:1, ticker:'PETR3', nome:'Petrobras ON', subsetor:'Exploração & Produção', icon:'🛢️',
    pjBase:64.47, precoBase:54.30, classifBase:'Barato',
    roic:'14.7%', roa:'9.4%', roe:'28.2%', pl:'6.1x', evEbit:'6.2x', dy:'5.8%',
    divAtivo:'36.3%', ret1a:'+38.1%', pfco:'3.4x', pbook:'1.62x',
    crescDiv:'+2.8%', receita:'R$497.5B', ebitda:'R$107.0B', divida:'R$476.0B',
    scoreNum:24, score:'24/26', veredicto:'✅ COMPRA FORTE', classe:'A',
    momento:'OPORTUNIDADE DE COMPRA', estrategia:'Posição core 5-8% · Stop R$46.16 · Alvo R$64.47 (PJ) · Dividendo recorrente',
    hm:[2,2,2,2,2,1,2,1,2,2,2,2,2],
    pess:'R$51.58', real:'R$64.47', otim:'R$77.36', retPess:'-5.0%', retReal:'+18.7%', retOtim:'+42.5%',
    alvoAnal:'R$45.47',
    tip:'Integrada estatal dominante; pré-sal 81% produção. ROIC 14.7%, DY 5.8%, P/L 6.1x. Desconto político injustificado.',
    pontos_pos:'• P/L 6.1x e EV/EBIT 6.2x — múltiplos muito atrativos para empresa do porte e qualidade da Petrobras\n• ROIC 14.7% e ROA 9.4% — criação de valor robusta com 81% da produção em pré-sal de baixo custo\n• DY 5.8% com 9 anos consecutivos de pagamento — dividendo previsível e sustentável\n• FCF Yield 14.7% — geração de caixa excepcional; plano de CapEx USD 111B 2025-2029 bem estruturado\n• Produção cresceu 11% em 2025 para 2.99 MMboe/d com breakeven em USD 28/barril\n• Classificação "Barato" vs PJ R$64.47 — upside de 18.7% desde preço atual',
    pontos_neg:'• Risco político — empresa estatal sujeita a interferência governamental em preços e dividendos\n• Dividend Yield em queda: 25% em FY23 → 6% atual — tendência de redução de payout\n• RSI em território de sobrecompra — momentum técnico desfavorável no curto prazo\n• Passivo de curto prazo supera ativos líquidos — risco de liquidez no curto prazo\n• Exposição direta ao preço do Brent — volatilidade de commodities afeta resultado',
    fco:'FCO R$73.8B (estimativa LTM). FCF Yield 14.7% — excepcional. P/FCO 3.4x — um dos mais baratos do setor. Dívida total R$476B mas Dívida Líquida/EBITDA gerenciável. Receita R$497.5B com EBITDA ~R$107B. Margem EBITDA ~21.5%. Geração de caixa protegida por pré-sal de ultrabaixo custo (breakeven USD 28/bbl). Cash flow suficiente para cobrir juros com sobra. Plano de CapEx 60% em pré-sal de alto retorno.',
    dcf:'P/L 6.1x e EV/EBIT 6.2x indicam empresa claramente subavaliada. DCF com WACC 10% (risco político) e crescimento 3% aponta PJ R$64-70. Preço atual R$54.30 = desconto de 18.7% vs PJ R$64.47. Alvo analistas R$45.47 (conservador, mediana). ROIC 14.7% vs WACC implícito ~9% = EVA positivo sólido.',
    estrategiaDetalhe:'Compra core · Stop R$46.16 · Alvo 12m: R$45.47 (analistas) · Alvo PJ: R$64.47 · Posição 5-8% carteira · Dividendo recorrente' },

  { rank:2, ticker:'RECV3', nome:'PetroRecôncavo', subsetor:'Exploração & Produção', icon:'🛢️',
    pjBase:19.11, precoBase:13.58, classifBase:'Barato',
    roic:'9.2%', roa:'7.9%', roe:'14.9%', pl:'6.2x', evEbit:'7.6x', dy:'14.2%',
    divAtivo:'44.0%', ret1a:'-8.7%', pfco:'2.6x', pbook:'0.92x',
    crescDiv:'+72.6%', receita:'R$3.2B', ebitda:'R$1.5B', divida:'R$3.1B',
    scoreNum:19, score:'19/26', veredicto:'✅ COMPRA', classe:'B',
    momento:'OPORTUNIDADE DE COMPRA', estrategia:'Compra · Stop R$11.54 · Alvo R$19.11 (PJ) · DY 14% remunera a espera',
    hm:[1,2,1,2,2,2,2,2,1,0,2,2,0],
    pess:'R$15.29', real:'R$19.11', otim:'R$22.93', retPess:'+12.6%', retReal:'+40.7%', retOtim:'+68.9%',
    alvoAnal:'R$13.18',
    tip:'Onshore maduro com DY 14.2% excepcional. Net Debt/EBITDA 1.1x — balanço sólido. Barato vs pares.',
    pontos_pos:'• Dividend Yield 14.2% — maior do setor E&P; distribuiu R$563M em 2025 (15% do market cap)\n• ROIC 9.2% e ROA 7.9% — sólidos para produtor onshore maduro\n• EV/EBIT 7.6x — muito atrativo; um dos mais baratos do setor\n• Net Debt/EBITDA de 1.1x — baixa alavancagem, balanço saudável\n• 40% da produção em gás natural — diversificação e crescimento via UPGN Guamaré\n• Upside de 40.7% para o PJ R$19.11 — significativa margem de segurança',
    pontos_neg:'• Receita caiu 3% e EBITDA caiu 12% em 2025 — pressão do Brent em queda e descontos comerciais\n• EPS projetado declina em 2026 — Goldman Sachs recomenda "Sell" com target R$10.60\n• Campos maduros onshore com curva natural de declínio — reserve replacement ratio 0.96\n• FCF Yield negativo em 2025 por expansão de CapEx — limitação temporária mas preocupante\n• Concentração geográfica no Nordeste — risco operacional e logístico',
    fco:'FCO R$1.5B (2025). CapEx agressivo R$2.3B em 2026 (expansão UPGN + novos poços). FCF Yield -3.6% em 2025 mas dividendo pago via resultado acumulado e desinvestimentos. P/FCO 2.6x normalizado. Dívida total R$3.1B; Net Debt/EBITDA 1.1x — balanço confortável. Receita R$3.2B. EBITDA R$1.5B. Margem EBITDA 45% — eficiente. Cost of lifting USD 14.32/bbl Q4 2025.',
    dcf:'EV/EBIT 7.6x e P/L 6.2x — valores muito atrativos para produtora lucrativa. DCF com WACC 10% e crescimento conservador 2% aponta PJ R$18-20. PJ Investing R$19.11. Upside de 40.7% vs preço atual R$13.58 — desconto significativo. Risco principal: precificação do barril de petróleo.',
    estrategiaDetalhe:'Compra · Stop R$11.54 · Alvo 12m: R$13.18 (analistas) · Alvo PJ: R$19.11 · Posição 3-5% · DY 14% remunera enquanto aguarda valorização' },

  { rank:3, ticker:'UGPA3', nome:'Ultrapar', subsetor:'Distribuição', icon:'⛽',
    pjBase:37.35, precoBase:28.32, classifBase:'Barato',
    roic:'10.3%', roa:'5.7%', roe:'15.2%', pl:'11.4x', evEbit:'9.0x', dy:'6.2%',
    divAtivo:'40.3%', ret1a:'+45.0%', pfco:'5.6x', pbook:'1.93x',
    crescDiv:'+42.3%', receita:'R$44.5B', ebitda:'R$4.8B', divida:'R$18.0B',
    scoreNum:19, score:'19/26', veredicto:'✅ COMPRA', classe:'B',
    momento:'OPORTUNIDADE DE COMPRA', estrategia:'Compra · Stop R$24.07 · Alvo R$37.35 (PJ) · DY 6.2% + re-rating potencial',
    hm:[2,1,2,1,1,2,2,1,1,0,2,2,2],
    pess:'R$29.88', real:'R$37.35', otim:'R$44.82', retPess:'+5.5%', retReal:'+31.9%', retOtim:'+58.3%',
    alvoAnal:'R$34.50',
    tip:'Conglomerado diversificado; DY 6.2%. Upside 31.9% ao PJ. Desinvestimento Extrafarma como catalisador.',
    pontos_pos:'• ROIC 10.3% e ROE 15.2% — retornos acima do custo de capital; empresa eficiente\n• DY 6.2% com crescimento consecutivo de dividendos — 2 anos de aumento\n• Diversificação em GLP (Ultragaz), combustíveis (Ipiranga), pharma (Extrafarma)\n• EV/EBIT 9.0x — múltiplo atrativo para conglomerado diversificado de qualidade\n• Upside de 31.9% ao PJ R$37.35 — classificação "Barato"\n• P/L 11.4x razoável para nível de diversificação e qualidade operacional',
    pontos_neg:'• Conglomerado com múltiplos negócios — complexidade dificulta avaliação e execução\n• Competição intensa com VBBR3 no segmento de combustíveis\n• Exposição ao GLP residencial — sensível a políticas de preços de gás\n• Crescimento da dívida de 42.3% — acima do ideal, requer monitoramento',
    fco:'FCO estimada R$5.1B. FCF Yield implícito adequado. P/FCO 5.6x — atrativo. Dívida total R$18B; Dívida/Ativo 40.3% — limiar aceitável. Receita R$44.5B. EBITDA R$4.8B. Margem EBITDA ~10.8%. Histórico sólido de geração de caixa ao longo dos ciclos econômicos.',
    dcf:'P/L 11.4x e EV/EBIT 9.0x — valuation razoável a atrativo. DCF com WACC 9.5% e crescimento 4% aponta PJ R$35-40. PJ Investing R$37.35. Upside 31.9% é o segundo maior entre distribuidoras. Alvo analistas R$34.50. Foco: desinvestimento de Extrafarma libera valor.',
    estrategiaDetalhe:'Compra · Stop R$24.07 · Alvo 12m: R$34.50 (analistas) · Alvo PJ: R$37.35 · Posição 3-5% · DY 6.2% remunera enquanto aguarda re-rating' },

  { rank:4, ticker:'VBBR3', nome:'Vibra Energia', subsetor:'Distribuição', icon:'⛽',
    pjBase:35.57, precoBase:30.84, classifBase:'Justo',
    roic:'10.3%', roa:'3.6%', roe:'9.6%', pl:'18.4x', evEbit:'9.6x', dy:'5.1%',
    divAtivo:'38.6%', ret1a:'+117.4%', pfco:'5.5x', pbook:'1.78x',
    crescDiv:'+11.6%', receita:'R$183.0B', ebitda:'R$4.8B', divida:'R$21.2B',
    scoreNum:18, score:'18/26', veredicto:'✅ COMPRA', classe:'B',
    momento:'OPORTUNIDADE DE COMPRA', estrategia:'Compra · Stop R$26.21 · Alvo R$35.57 (PJ) · DY 5.1% recorrente',
    hm:[2,1,1,1,1,1,2,1,2,1,2,1,2],
    pess:'R$28.46', real:'R$35.57', otim:'R$42.68', retPess:'-7.7%', retReal:'+15.3%', retOtim:'+38.4%',
    alvoAnal:'R$31.45',
    tip:'Líder em distribuição; 24% market share. DY 5.1% com expansão em renováveis via Comerc.',
    pontos_pos:'• 24.1% market share em gasolina — líder absoluto na distribuição de combustíveis no Brasil\n• DY 5.1% com 8 anos consecutivos de dividendos — renda consistente e previsível\n• FCF Yield 12.9% — geração de caixa sólida; BR: 8.000 postos em todo Brasil\n• Diversificação estratégica em renováveis via Comerc Energia (EBITDA R$1.2B/ano em 2025)\n• ROIC 10.3% — acima do custo de capital; criação de valor\n• Receita R$183B — gigante do varejo energético; vantagem de escala incomparável',
    pontos_neg:'• Margens brutas fracas — distribuidoras têm margens estruturalmente comprimidas\n• Net income esperado cair 68% em FY2025 pós-resultado excepcional FY2024\n• 3 analistas revisaram EPS negativamente nos últimos 90 dias\n• Ameaça de longo prazo: adoção de veículos elétricos reduz demanda por combustíveis fósseis\n• P/L 18.4x — múltiplo moderado para distribuidora com margens baixas',
    fco:'FCO R$7.2B (estimativa LTM). FCF Yield 12.9% — excelente. P/FCO 5.5x — atrativo. Dívida total R$21.2B; Dívida/Ativo 38.6% — gerenciável. Receita R$183B. EBITDA R$4.8B. Margem EBITDA 2.6% — baixa mas típica de distribuidoras. Ativos líquidos superam obrigações de curto prazo.',
    dcf:'P/L 18.4x parece caro mas EV/EBITDA 9.6x e EV/Revenue 0.31x são baratos para o tamanho. DCF com WACC 9% e crescimento 4% (expansão Comerc) aponta PJ R$34-38. PJ Investing R$35.57 vs preço R$30.84 (+15.3%). Catalisador: crescimento Comerc Energia + BR Mania.',
    estrategiaDetalhe:'Compra · Stop R$26.21 · Alvo 12m: R$35.57 (PJ) · Posição 3-5% · DY recorrente + upside de expansão em renováveis' },

  { rank:5, ticker:'BRAV3', nome:'Brava Energia', subsetor:'Exploração & Produção', icon:'🛢️',
    pjBase:25.78, precoBase:19.56, classifBase:'Pechincha',
    roic:'4.7%', roa:'3.2%', roe:'12.7%', pl:'5.6x', evEbit:'7.9x', dy:'0.0%',
    divAtivo:'69.5%', ret1a:'-12.6%', pfco:'1.9x', pbook:'0.77x',
    crescDiv:'-11.9%', receita:'R$11.6B', ebitda:'R$2.1B', divida:'R$14.5B',
    scoreNum:16, score:'16/26', veredicto:'⚠️ NEUTRO', classe:'C',
    momento:'MONITORAR', estrategia:'Compra especulativa · Stop R$16.63 · Alvo R$23.04 (analistas) · Stop essencial',
    hm:[0,1,1,2,2,0,2,2,0,2,2,2,0],
    pess:'R$20.62', real:'R$25.78', otim:'R$30.94', retPess:'+5.4%', retReal:'+31.8%', retOtim:'+58.2%',
    alvoAnal:'R$23.04',
    tip:'"Pechincha" com FCF Yield 25.5%. Atlanta + Papa-Terra: campanha de poços em andamento.',
    pontos_pos:'• FCF Yield 25.5% — geração de caixa excepcional vs market cap; múltiplo mais barato do setor\n• EV/EBITDA 5.3x (2025) caindo para 3.5x em 2026 — valuation comprimido\n• Produção recorde 81K boe/d em 2025 (+46% YoY); EBITDA cresceu 21% com margem 39%\n• Classificação "Pechincha" com upside de 31.8% para PJ R$25.78\n• Custo de lifting offshore caiu 17% para USD 13.4/bbl — melhor eficiência histórica\n• Net Debt/EBITDA caiu de 3.4x para 2.1x em 2025 — desalavancagem acelerada',
    pontos_neg:'• P/L 5.6x atrativo mas EPS 2025 decepcionou (-106% vs expectativa)\n• Sem dividendos — toda geração de caixa direcionada para CapEx e deleverage\n• Indicadores técnicos em "Strong Sell" — momentum negativo no curto prazo\n• Incertezas regulatórias: tributação de exportações anunciada pelo governo\n• Campos Atlanta e Papa-Terra em drilling campaign — risco de execução operacional',
    fco:'FCO implícita forte (FCF Yield 25.5%). Receita R$11.6B com EBITDA R$2.1B (margem 39%). Cash position R$1.09B. Net Debt R$13.4B, Net Debt/EBITDA 2.1x — trajetória de desalavancagem clara. P/FCO ~1.9x normalizado — excepcional. CapEx 2026: campanha 4 poços Papa-Terra + Atlanta.',
    dcf:'EV/EBITDA 5.3x caindo para 3.5x em FY2026 — valuation extraordinariamente barato. P/L 5.6x vs pares 15-25x — desconto significativo. PJ Investing R$25.78 vs preço R$19.56 (+31.8%). Alvo analistas: mediana R$23.04, máximo R$30.00. DCF conservador com WACC 10.5% aponta R$22-27.',
    estrategiaDetalhe:'Compra especulativa · Stop R$16.63 · Alvo 12m: R$23.04 (analistas) · Alvo PJ: R$25.78 · Posição 2-4% · Alta volatilidade — stop técnico essencial' },

  { rank:6, ticker:'OPCT3', nome:'OceanPact', subsetor:'Serviços & Equip.', icon:'🔧',
    pjBase:12.45, precoBase:8.82, classifBase:'Barato',
    roic:'7.8%', roa:'3.2%', roe:'10.5%', pl:'16.7x', evEbit:'10.3x', dy:'0.0%',
    divAtivo:'54.3%', ret1a:'+22.2%', pfco:'4.4x', pbook:'1.73x',
    crescDiv:'+22.2%', receita:'R$3.1B', ebitda:'R$0.3B', divida:'R$1.6B',
    scoreNum:14, score:'14/26', veredicto:'⚠️ NEUTRO', classe:'C',
    momento:'MONITORAR', estrategia:'Compra · Stop R$7.50 · Alvo R$12.45 (PJ) · Exposição ciclo offshore',
    hm:[1,1,1,1,1,0,2,1,1,0,2,2,1],
    pess:'R$9.96', real:'R$12.45', otim:'R$14.94', retPess:'+12.9%', retReal:'+41.2%', retOtim:'+69.4%',
    alvoAnal:'R$11.00',
    tip:'Beneficiária do ciclo offshore Petrobras. Upside 41.2%. Risco: concentração de cliente.',
    pontos_pos:'• ROIC 7.8% e ROA 3.2% — empresa lucrativa em segmento de serviços marítimos de nicho\n• Upside de 41.2% ao PJ R$12.45 — "Barato" com crescimento potencial via expansão offshore\n• EV/EBIT 10.3x — razoável para empresa de serviços especializados\n• 1 ano consecutivo de aumento de dividendos — disciplina financeira crescente\n• Beneficiária direta do ciclo de investimentos offshore da Petrobras (USD 111B 2025-2029)',
    pontos_neg:'• P/L 16.7x — múltiplo elevado para empresa de serviços de menor porte\n• Dependência concentrada em contratos com Petrobras — risco de cliente único\n• Dívida/Ativo 54.3% — alavancagem moderada a alta para empresa de serviços\n• Liquidez reduzida — ação com baixo volume diário de negociação',
    fco:'FCO estimada R$0.7B. P/FCO 4.4x — atrativo. Receita R$3.1B. EBITDA estimado R$0.3B. Dívida R$1.6B; Dívida/Ativo 54.3% — monitorar para não comprometer cobertura de juros. Empresa cresce organicamente com contratos multi-anuais da Petrobras — receita previsível.',
    dcf:'DCF com WACC 11% (risco de concentração de cliente) e crescimento 8% (ciclo offshore) aponta PJ R$12-14. PJ Investing R$12.45 (+41.2%). Catalisador: novos contratos Petrobras + expansão regional. Candidata a beneficiária do superciclo de E&P offshore no pré-sal.',
    estrategiaDetalhe:'Compra · Stop R$7.50 · Alvo 12m: R$11.00 · Alvo PJ: R$12.45 · Posição 1-2% · Lote de exposição ao ciclo offshore' },

  { rank:7, ticker:'PRIO3', nome:'Prio SA', subsetor:'Exploração & Produção', icon:'🛢️',
    pjBase:77.94, precoBase:70.82, classifBase:'Justo',
    roic:'3.4%', roa:'3.8%', roe:'8.7%', pl:'25.6x', evEbit:'38.0x', dy:'0.0%',
    divAtivo:'33.1%', ret1a:'+73.8%', pfco:'7.0x', pbook:'2.23x',
    crescDiv:'+26.8%', receita:'R$15.6B', ebitda:'R$8.0B', divida:'R$28.4B',
    scoreNum:11, score:'11/26', veredicto:'🔴 VENDA / EVITAR', classe:'D',
    momento:'NÃO RECOMENDADO', estrategia:'Compra gradual · Stop R$60.20 · Alvo R$77.94 (PJ) · Reavaliar pós Q1 2026',
    hm:[0,1,1,0,0,0,2,1,2,0,1,1,2],
    pess:'R$62.35', real:'R$77.94', otim:'R$93.53', retPess:'-12.0%', retReal:'+10.1%', retOtim:'+32.1%',
    alvoAnal:'R$61.01',
    tip:'Maior independente do Brasil; Wahoo +40K bbl/d em Q2/2026. Desalavancagem acelerada pós-Peregrino.',
    pontos_pos:'• Maior produtora independente do Brasil — 106K bbl/d em 2025 (recorde); Wahoo adiciona 40K bbl/d em 2026\n• Lifting cost de USD 12.50/bbl (Q4 2025) — um dos mais eficientes do mundo em águas rasas\n• ROIC 3.4% pós-aquisição Peregrino — temporário; tende a normalizar acima de 12% em 2026-2027\n• Aquisição Peregrino 80% — integração completada; run rate EBITDA USD 370M/ano\n• Wahoo em startup iminente — catalisador de produção e receita no curto prazo',
    pontos_neg:'• Dívida Líquida/EBITDA de 2.3x pós-Peregrino — alavancagem acima do confortável (meta: 1.6x em 2026)\n• P/L 25.6x — múltiplo elevado vs pares por conta do resultado deprimido em 2025\n• Sem dividendos declarados — ausência de renda enquanto empresa deleverages\n• Concentração em campos maduros offshore — risco de declínio de produção em curva S\n• EPS 2025 decepcionou expectativas; volatilidade de resultado elevada',
    fco:'FCO R$8.2B (2025 LTM). Investimento pesado R$17.2B por aquisição Peregrino. FCF Yield negativo em 2025 mas normalização esperada em 2026 com Wahoo em produção plena. P/FCO 7.0x na normalização. Dívida total R$28.4B; Net Debt/EBITDA 2.3x. Receita R$15.6B com EBITDA R$8.0B. Margem EBITDA 51% — alta eficiência operacional.',
    dcf:'P/L atual 25.6x distorcido — usar EV/EBITDA forward de 5.3x para FY2026 (atrativo). DCF com WACC 9.5% e crescimento 5% (via Wahoo) aponta PJ R$77-85. PJ Investing R$77.94 (+10.1%). Catalisador key: first oil Wahoo (esperado Q2 2026) + deleverage para 1.6x Net Debt/EBITDA.',
    estrategiaDetalhe:'Compra gradual · Stop R$60.20 · Alvo 12m: R$77.94 (PJ) · Posição 3-5% carteira · Reavaliar após resultados Q1 2026 em mai/26' },

  { rank:8, ticker:'CSNA3', nome:'CSN (Siderurgia/Petro)', subsetor:'Refino & Siderurgia', icon:'🏭',
    pjBase:8.82, precoBase:6.18, classifBase:'Barato',
    roic:'4.6%', roa:'-1.5%', roe:'-9.7%', pl:'NM', evEbit:'10.1x', dy:'0.0%',
    divAtivo:'83.0%', ret1a:'-40.5%', pfco:'-8.4x', pbook:'0.64x',
    crescDiv:'-6.5%', receita:'R$44.8B', ebitda:'R$7.9B', divida:'R$42.0B',
    scoreNum:9, score:'9/26', veredicto:'🔴 VENDA / EVITAR', classe:'D',
    momento:'NÃO RECOMENDADO', estrategia:'EVITAR / especulativo · Stop R$5.25 · Aguardar sinais de turnaround confirmado',
    hm:[0,0,0,0,1,0,0,2,0,2,2,2,0],
    pess:'R$7.06', real:'R$8.82', otim:'R$10.58', retPess:'+14.2%', retReal:'+42.7%', retOtim:'+71.3%',
    alvoAnal:'R$9.38',
    tip:'Turnaround especulativo. EPS negativo, dívida elevada. Upside 42.7% mas alto risco de crédito.',
    pontos_pos:'• EV/EBITDA 5.3x — barato em termos de múltiplo operacional\n• Upside de 42.7% ao PJ R$8.82 e RSI em território de sobrevenda (oportunidade técnica)\n• Estrutura verticalmente integrada: aço + mineração + cimento + energia\n• Market cap R$7.9B vs ativo total ~R$50B — P/Book 0.64x (abaixo do book)\n• Projeção de crescimento do mercado de aço brasileiro 4.18% CAGR até 2034',
    pontos_neg:'• EPS negativo; P/L negativo — empresa não lucrativa em 2025 e 2026E\n• FCF Yield -81.9% — queima intensa de caixa; risco de liquidez\n• Dívida massiva com cobertura de juros insuficiente — stress financeiro evidente\n• Indicadores técnicos em "Strong Sell" — tendência negativa de longo prazo\n• Ações caíram -40.5% em 1 ano; trading perto da mínima de 52 semanas',
    fco:'FCF Yield -81.9% — empresa está queimando caixa significativamente. Receita R$44.8B mas sem conversão em lucro. EBITDA R$7.9B (margem EBITDA ~17.6%) — OK operacionalmente. Problema: estrutura de capital pesada com juros elevados consumindo EBIT. Dívida R$42B; Dívida/Ativo 83% — insustentável sem refinanciamento.',
    dcf:'EV/EBITDA 5.3x parece barato mas lucro negativo invalida múltiplos convencionais. PJ Investing R$8.82 (+42.7%) vs preço R$6.18 — upside grande mas risco alto. CSNA3 é uma opção especulativa em turnaround — não adequada para carteiras conservadoras. Catalisador necessário: reestruturação de dívida + melhora de spreads de aço.',
    estrategiaDetalhe:'EVITAR ou posição especulativa mínima · Stop R$5.25 · Alvo R$8.82 (PJ) apenas se reestruturação se confirmar · Risco ALTO' },

  { rank:9, ticker:'RPMG3', nome:'Ref. Manguinhos', subsetor:'Refino & Siderurgia', icon:'🏭',
    pjBase:2.39, precoBase:2.10, classifBase:'Justo',
    roic:'-99.9%', roa:'-18.8%', roe:'-0.1%', pl:'NM', evEbit:'-0.0x', dy:'0.0%',
    divAtivo:'0.0%', ret1a:'+0.0%', pfco:'1.1x', pbook:'-0.02x',
    crescDiv:'+0.0%', receita:'R$0.2B', ebitda:'R$0.0B', divida:'R$0.0B',
    scoreNum:8, score:'8/26', veredicto:'🔴 VENDA / EVITAR', classe:'D',
    momento:'NÃO RECOMENDADO', estrategia:'EVITAR · Sem lucratividade · Aguardar viabilidade confirmada',
    hm:[0,0,0,0,0,0,2,0,2,2,1,1,0],
    pess:'R$1.91', real:'R$2.39', otim:'R$2.87', retPess:'-9.0%', retReal:'+13.8%', retOtim:'+36.6%',
    alvoAnal:'R$2.39',
    tip:'Refinaria de nicho sem lucratividade. Aguardar sinais de viabilidade operacional.',
    pontos_pos:'• Análise em elaboração — empresa sem histórico de rentabilidade\n• Upside de 13.8% ao PJ R$2.39 na classificação "Justo"',
    pontos_neg:'• ROIC e ROA negativos — empresa destruindo valor\n• Sem lucratividade histórica — sem perspectiva de dividendos\n• Dívida sem cobertura adequada — risco de solvência\n• Empresa de pequeno porte com baixa liquidez',
    fco:'Análise detalhada de fluxo de caixa em elaboração. Empresa apresenta métricas operacionais negativas.',
    dcf:'Análise de valuation em elaboração. Múltiplos negativos inviabilizam análise convencional. EVITAR até sinais concretos de turnaround.',
    estrategiaDetalhe:'EVITAR · Sem lucratividade · Aguardar viabilidade confirmada' },

  { rank:10, ticker:'LUPA3', nome:'Lupatech', subsetor:'Serviços & Equip.', icon:'🔧',
    pjBase:0.90, precoBase:0.84, classifBase:'Justo',
    roic:'-12.8%', roa:'-2.2%', roe:'-8.7%', pl:'-3.9x', evEbit:'-4.8x', dy:'0.0%',
    divAtivo:'81.3%', ret1a:'+5.0%', pfco:'6.1x', pbook:'0.35x',
    crescDiv:'+11.9%', receita:'R$0.6B', ebitda:'R$0.2B', divida:'R$0.9B',
    scoreNum:7, score:'7/26', veredicto:'🔴 VENDA / EVITAR', classe:'D',
    momento:'NÃO RECOMENDADO', estrategia:'EVITAR · Fundamentos deteriorados · Aguardar reversão operacional',
    hm:[0,0,0,0,0,0,2,2,0,1,1,1,0],
    pess:'R$0.72', real:'R$0.90', otim:'R$1.08', retPess:'-14.3%', retReal:'+7.1%', retOtim:'+28.6%',
    alvoAnal:'R$0.90',
    tip:'Empresa com fundamentos deteriorados. Upside marginal; evitar até sinais de reversão.',
    pontos_pos:'• P/Book 0.35x — negociando com desconto profundo ao patrimônio\n• Upside de 7.1% ao PJ R$0.90',
    pontos_neg:'• ROIC -12.8% — empresa destruindo capital\n• Dívida/Ativo 81.3% — alavancagem crítica\n• Múltiplos negativos — sem perspectiva de recuperação imediata\n• Histórico de prejuízos recorrentes',
    fco:'FCO estimada negativa. Empresa em processo de reestruturação. Dívida R$0.9B em empresa de receita R$0.6B — risco de solvência.',
    dcf:'Análise fundamentalista inviabilizada por métricas negativas. EVITAR até demonstração clara de reversão operacional e de balanço.',
    estrategiaDetalhe:'EVITAR · Fundamentos deteriorados · Aguardar reversão operacional' },

  { rank:11, ticker:'OSXB3', nome:'OSX Brasil', subsetor:'Serviços & Equip.', icon:'🔧',
    pjBase:2.06, precoBase:1.68, classifBase:'Barato',
    roic:'-99.9%', roa:'-76.0%', roe:'-0.0%', pl:'-0.0x', evEbit:'NM', dy:'0.0%',
    divAtivo:'100.1%', ret1a:'+5.0%', pfco:'0.4x', pbook:'-0.00x',
    crescDiv:'+12.9%', receita:'R$0.3B', ebitda:'R$0.1B', divida:'R$6.5B',
    scoreNum:7, score:'7/26', veredicto:'🔴 VENDA / EVITAR', classe:'D',
    momento:'NÃO RECOMENDADO', estrategia:'EVITAR · Empresa em recuperação · Risco de capital total',
    hm:[0,0,0,0,0,0,2,0,0,1,2,2,0],
    pess:'R$1.65', real:'R$2.06', otim:'R$2.47', retPess:'-1.9%', retReal:'+22.6%', retOtim:'+47.1%',
    alvoAnal:'R$2.06',
    tip:'Empresa em recuperação judicial histórica. Especulativo puro. EVITAR.',
    pontos_pos:'• Upside de 22.6% ao PJ R$2.06 — relativo ao preço atual\n• Dívida/Ativo 100.1% — passivo supera ativo (situação crítica)',
    pontos_neg:'• Empresa em recuperação judicial — risco de capital total\n• ROIC e ROA profundamente negativos — destruição de valor\n• Passivo total supera ativo total — insolvência técnica\n• Histórico de reestruturações sem sucesso',
    fco:'Empresa em recuperação judicial. Fluxo de caixa operacional negativo. Risco de diluição severa dos acionistas.',
    dcf:'Análise fundamentalista inviável — empresa insolvente. EVITAR completamente.',
    estrategiaDetalhe:'EVITAR · Empresa em recuperação judicial histórica · Risco de capital total' },

  { rank:12, ticker:'AZTE3', nome:'Azevedo & Travassos', subsetor:'Serviços & Equip.', icon:'🔧',
    pjBase:0.25, precoBase:0.37, classifBase:'Caro',
    roic:'-99.9%', roa:'-99.9%', roe:'-0.0%', pl:'-49.6x', evEbit:'-233.9x', dy:'0.0%',
    divAtivo:'1.4%', ret1a:'-30.0%', pfco:'-3.8x', pbook:'0.50x',
    crescDiv:'-10.0%', receita:'R$0.1B', ebitda:'R$0.0B', divida:'R$0.1B',
    scoreNum:6, score:'6/26', veredicto:'🔴 VENDA / EVITAR', classe:'D',
    momento:'NÃO RECOMENDADO', estrategia:'EVITAR · Caro vs PJ · Resultados negativos · Sem visibilidade de melhora',
    hm:[0,0,0,0,0,0,0,2,2,2,0,0,0],
    pess:'R$0.20', real:'R$0.25', otim:'R$0.30', retPess:'-45.9%', retReal:'-32.4%', retOtim:'-18.9%',
    alvoAnal:'R$0.25',
    tip:'"Caro" vs PJ. Fundamentos negativos. EVITAR.',
    pontos_pos:'• Dívida/Ativo 1.4% — quase sem dívida (empresa muito pequena)\n• P/Book 0.50x — abaixo do patrimônio',
    pontos_neg:'• Classificação "CARO" — preço atual ACIMA do preço justo em -32.4%\n• ROIC e ROA extremamente negativos — destruição de capital\n• Múltiplos negativos com P/L -49.6x e EV/EBIT -233.9x\n• Sem perspectiva de melhora operacional\n• Ações caíram -30% em 1 ano',
    fco:'Empresa sem escala operacional relevante. FCO negativo. Evitar completamente.',
    dcf:'Empresa classificada como "Caro" vs PJ com downside de -32.4%. Análise fundamentalista sem suporte para qualquer múltiplo positivo.',
    estrategiaDetalhe:'EVITAR · Caro vs PJ · Resultados negativos · Sem visibilidade de melhora' }
];

const SUBSETORES_PET = [
  { nome:'🛢️ Exploração & Produção', tickers:['PETR3','RECV3','BRAV3','PRIO3'] },
  { nome:'⛽ Distribuição',           tickers:['UGPA3','VBBR3'] },
  { nome:'🏭 Refino & Siderurgia',    tickers:['CSNA3','RPMG3'] },
  { nome:'🔧 Serviços & Equip.',      tickers:['OPCT3','LUPA3','OSXB3','AZTE3'] }
];

// FACTOR_CRITERIA global

// ══════════════════════════════════════════════════════════════
//  COTAÇÕES AO VIVO
// ══════════════════════════════════════════════════════════════
// livePrices global
// lastFetchTime global
// marketOpen global

/* REMOVED isMarketOpen */

async function _NOOP_fetchAllPrices() {
  const btn = document.getElementById('updateBtn');
  const statusEl = document.getElementById('priceStatus');
  const marketEl = document.getElementById('marketStatus');
  btn.classList.add('loading');
  document.getElementById('updateBtnText').textContent = 'Buscando...';

  const tickers = COMPANIES_PET.map(c => c.ticker);
  marketOpen = isMarketOpen();
  marketEl.textContent = marketOpen ? '🟢 Mercado Aberto (B3)' : '🔴 Mercado Fechado — Último Fechamento';

  try {
    // Primary: Brapi.dev
    const tickerStr = tickers.join(',');
    const url = `https://brapi.dev/api/quote/${tickerStr}?range=1d&interval=1d&fundamental=false&dividends=false`;
    const res = await fetch(url, { signal: AbortSignal.timeout(8000) });
    if (!res.ok) throw new Error('brapi error');
    const data = await res.json();
    if (data.results) {
      data.results.forEach(r => {
        if (r.regularMarketPrice) livePrices[r.symbol] = r.regularMarketPrice;
      });
    }
    lastFetchTime = new Date();
    statusEl.textContent = `${marketOpen ? '🟢 Ao vivo' : '🔴 Fechamento'} · ${lastFetchTime.toLocaleTimeString('pt-BR')}`;
    statusEl.className = 'price-status live';
  } catch(e1) {
    try {
      // Fallback: Yahoo Finance via CORS proxy
      for (const ticker of tickers) {
        try {
          const yahooTicker = ticker + '.SA';
          const proxyUrl = `https://corsproxy.io/?${encodeURIComponent(`https://query1.finance.yahoo.com/v8/finance/chart/${yahooTicker}?interval=1d&range=1d`)}`;
          const res = await fetch(proxyUrl, { signal: AbortSignal.timeout(5000) });
          const data = await res.json();
          const price = data?.chart?.result?.[0]?.meta?.regularMarketPrice;
          if (price) livePrices[ticker] = price;
        } catch {}
      }
      lastFetchTime = new Date();
      statusEl.textContent = `Via Yahoo · ${lastFetchTime.toLocaleTimeString('pt-BR')}`;
      statusEl.className = 'price-status live';
    } catch(e2) {
      statusEl.textContent = 'Cotação ao vivo indisponível · Usando base 29/03/2026';
      statusEl.className = 'price-status';
    }
  }

  btn.classList.remove('loading');
  document.getElementById('updateBtnText').textContent = '⟳ Atualizar Cotações';
  // renderAll() handled globally
  updateTopUpside();
}

/* REMOVED getPrice */

/* REMOVED getUpside */

/* REMOVED fmtPrice */
/* REMOVED fmtPct */
/* REMOVED upsideClass */
/* REMOVED getVeredictoFromUpside */ function _NOOP_getVeredictoFromUpside() {
  if (upside >= 20) return '✅ COMPRA FORTE';
  if (upside >= 5)  return '✅ COMPRA';
  if (upside >= -5) return '💛 PREÇO JUSTO';
  if (upside >= -15)return '⚠️ ATENÇÃO';
  return '🔴 CARO';
}
/* REMOVED badgeClass */
/* REMOVED classifHTML */
/* REMOVED scoreColor */
/* REMOVED scoreEmoji */

/* REMOVED updateTopUpside */ function _NOOP_updateTopUpside() {
  const sorted = COMPANIES_PET.map(c => ({ ticker:c.ticker, upside:getUpside(c.ticker) }))
    .sort((a,b) => b.upside - a.upside);
  const top2 = sorted.slice(0,2);
  document.getElementById('topUpsideBar').textContent = top2.map(x => `${x.ticker} ${fmtPct(x.upside)}`).join(' · ');
}

// ══════════════════════════════════════════════════════════════
//  TABS
// ══════════════════════════════════════════════════════════════
/* REMOVED showTab */ function _NOOP_showTab() {
  document.querySelectorAll('.section').forEach(s => s.classList.remove('active'));
  document.querySelectorAll('.tab-btn').forEach(b => b.classList.remove('active'));
  document.getElementById('tab-' + id).classList.add('active');
  btn.classList.add('active');
}

// ══════════════════════════════════════════════════════════════
//  RENDER RANKING
// ══════════════════════════════════════════════════════════════
/* REMOVED renderRanking */ function _NOOP_renderRanking() {
  const tbody = document.getElementById('rankingTbody');
  let html = '';
  SUBSETORES_PET.forEach(sub => {
    const comps = sub.tickers.map(t => COMPANIES_PET.find(c => c.ticker === t)).filter(Boolean);
    html += `<tr class="subsetor-header"><td colspan="18">${sub.nome}</td></tr>`;
    comps.forEach((c, idx) => {
      const price = getPrice(c.ticker);
      const upside = getUpside(c.ticker);
      const sc = c.scoreNum;
      const barW = Math.round(sc / 26 * 100);
      const barColor = sc >= 20 ? '#166534' : sc >= 16 ? '#16A34A' : sc >= 12 ? '#D97706' : '#DC2626';
      html += `<tr>
        <td class="rank-num">${c.rank}</td>
        <td><span class="ticker-chip">${c.ticker}</span></td>
        <td style="font-weight:500;min-width:140px">${c.nome}</td>
        <td style="font-size:12px;color:var(--slate)">${c.icon} ${c.subsetor}</td>
        <td class="val-live" id="price-${c.ticker}">${fmtPrice(price)}</td>
        <td class="val-price">${fmtPrice(c.pjBase)}</td>
        <td>${classifHTML(c)}</td>
        <td><span class="${upsideClass(upside)}" id="upside-${c.ticker}">${fmtPct(upside)}</span></td>
        <td class="val-mono" style="color:${parseFloat(c.roic)>=10?'var(--green-700)':parseFloat(c.roic)>=6?'var(--amber)':'var(--red)'}">${c.roic}</td>
        <td class="val-mono">${c.roa}</td>
        <td class="val-mono">${c.roe}</td>
        <td class="val-mono">${c.pl}</td>
        <td class="val-mono">${c.evEbit}</td>
        <td class="val-mono">${c.dy}</td>
        <td class="val-mono">${c.divAtivo}</td>
        <td class="val-mono" style="color:${c.ret1a.startsWith('+') ? 'var(--green-700)' : 'var(--red)'}">${c.ret1a}</td>
        <td><span class="${badgeClass(c.veredicto)}">${c.veredicto}</span></td>
        <td>
          <div class="score-display">
            <div class="score-bar-wrap"><div class="score-bar" style="width:${barW}%;background:${barColor}"></div></div>
            <span class="score-text" style="color:${barColor}">${c.score}</span>
          </div>
        </td>
      </tr>`;
    });
  });
  tbody.innerHTML = html;
}

// ══════════════════════════════════════════════════════════════
//  RENDER FACTOR DETALHADO
// ══════════════════════════════════════════════════════════════
/* REMOVED renderFactor */ function _NOOP_renderFactor() {
  const el = document.getElementById('factorContent');
  let html = '';
  SUBSETORES_PET.forEach(sub => {
    const comps = sub.tickers.map(t => COMPANIES_PET.find(c => c.ticker === t)).filter(Boolean);
    html += `<div class="heatmap-wrap"><div class="heatmap-header">${sub.nome}</div>
    <div style="overflow-x:auto"><table class="heatmap-table"><thead><tr>
      <th style="text-align:left">INDICADOR / FATOR</th>`;
    comps.forEach((c, i) => {
      html += `<th>#${c.rank}<br><span style="font-family:JetBrains Mono,monospace;font-size:11px">${c.ticker}</span><br>${c.score}</th>`;
    });
    html += '</tr></thead><tbody>';
    FACTOR_CRITERIA.forEach((crit, fi) => {
      html += `<tr><td>${crit}</td>`;
      comps.forEach(c => {
        const s = c.hm[fi] ?? 0;
        html += `<td class="${scoreColor(s)}">${scoreEmoji(s)}<br>${s}</td>`;
      });
      html += '</tr>';
    });
    // Total row
    html += '<tr><td>▶ PONTUAÇÃO TOTAL (0–26)</td>';
    comps.forEach(c => { html += `<td>${c.score}</td>`; });
    html += '</tr></tbody></table></div></div>';
  });
  el.innerHTML = html;
}

// ══════════════════════════════════════════════════════════════
//  RENDER TABELA MESTRA
// ══════════════════════════════════════════════════════════════
/* REMOVED renderMestra */ function _NOOP_renderMestra() {
  const thead = document.getElementById('mestraThead');
  const tbody = document.getElementById('mestraTbody');
  const comps = COMPANIES_PET;
  // Header
  let hh = '<tr><th class="sticky-col" style="min-width:200px">INDICADOR</th>';
  comps.forEach(c => { hh += `<th>#${c.rank}<br>${c.ticker}</th>`; });
  hh += '</tr>';
  thead.innerHTML = hh;
  // Rows
  const rows = [
    { label:'  PREÇO & CLASSIFICAÇÃO', group:true },
    { label:'Preço Atual (R$)', fn: c => `<span class="val-live" id="mestra-price-${c.ticker}">${fmtPrice(getPrice(c.ticker))}</span>` },
    { label:'Preço Justo / Fair Value', fn: c => `<span class="val-price">${fmtPrice(c.pjBase)}</span>` },
    { label:'Classificação FV', fn: c => classifHTML(c) },
    { label:'Upside até PJ', fn: c => `<span class="${upsideClass(getUpside(c.ticker))}" id="mestra-upside-${c.ticker}">${fmtPct(getUpside(c.ticker))}</span>` },
    { label:'Alvo Analistas', fn: c => `<span class="val-mono">${c.alvoAnal}</span>` },
    { label:'  RENTABILIDADE', group:true },
    { label:'ROIC', fn: c => c.roic },
    { label:'ROA',  fn: c => c.roa },
    { label:'ROE',  fn: c => c.roe },
    { label:'  VALUATION', group:true },
    { label:'P/L',     fn: c => c.pl },
    { label:'EV/EBIT', fn: c => c.evEbit },
    { label:'P/Book',  fn: c => c.pbook },
    { label:'P/FCO',   fn: c => c.pfco },
    { label:'  DIVIDENDOS & RETORNO', group:true },
    { label:'Dividend Yield', fn: c => c.dy },
    { label:'Retorno 1 Ano',  fn: c => `<span style="color:${c.ret1a.startsWith('+')?'var(--green-700)':'var(--red)'}">${c.ret1a}</span>` },
    { label:'  SAÚDE FINANCEIRA', group:true },
    { label:'Dívida/Ativo',  fn: c => c.divAtivo },
    { label:'Cresc. Dívida', fn: c => c.crescDiv },
    { label:'Dívida Total',  fn: c => c.divida },
    { label:'Receita LTM',   fn: c => c.receita },
    { label:'EBITDA LTM',    fn: c => c.ebitda },
    { label:'  FACTOR INVEST', group:true },
    { label:'Pontuação Total', fn: c => `<strong>${c.score}</strong>` },
    { label:'Veredicto', fn: c => `<span class="${badgeClass(c.veredicto)}">${c.veredicto}</span>` },
    { label:'Sub-Setor', fn: c => `${c.icon} ${c.subsetor}` }
  ];
  let tb = '';
  rows.forEach(r => {
    if (r.group) {
      tb += `<tr class="subsetor-header"><td class="sticky-col" colspan="${comps.length+1}" style="font-size:11px;letter-spacing:0.5px">${r.label}</td></tr>`;
    } else {
      tb += `<tr><td class="sticky-col" style="font-weight:500;color:var(--slate);font-size:12px">${r.label}</td>`;
      comps.forEach(c => { tb += `<td style="text-align:center;font-size:12px;font-family:JetBrains Mono,monospace">${r.fn(c)}</td>`; });
      tb += '</tr>';
    }
  });
  tbody.innerHTML = tb;
}

// ══════════════════════════════════════════════════════════════
//  RENDER PROJEÇÕES
// ══════════════════════════════════════════════════════════════
/* REMOVED renderProjecoes */ function _NOOP_renderProjecoes() {
  const el = document.getElementById('projContent');
  let html = '';
  SUBSETORES_PET.forEach(sub => {
    // Sub-setor header
    html += `<div style="grid-column:1/-1;background:var(--green-50);border:1px solid var(--green-100);border-left:4px solid var(--green-600);border-radius:0 8px 8px 0;padding:8px 14px;font-weight:700;color:var(--green-800);font-size:14px;">${sub.nome}</div>`;
    const comps = sub.tickers.map(t => COMPANIES_PET.find(c => c.ticker === t)).filter(Boolean);
    comps.forEach(c => {
      const price = getPrice(c.ticker);
      const upside = getUpside(c.ticker);
      // recalculate returns based on live price
      const pessVal = parseFloat(c.pess.replace('R$',''));
      const realVal = c.pjBase;
      const otimVal = parseFloat(c.otim.replace('R$',''));
      const retPessLive = ((pessVal - price) / price * 100).toFixed(1);
      const retRealLive = ((realVal - price) / price * 100).toFixed(1);
      const retOtimLive = ((otimVal - price) / price * 100).toFixed(1);
      html += `<div class="proj-card">
        <div class="proj-card-header">
          <div>
            <div class="proj-card-title">${c.nome}</div>
            <div style="font-size:11px;opacity:0.75;margin-top:2px">${c.icon} ${c.subsetor}</div>
          </div>
          <div style="text-align:right">
            <span class="proj-card-ticker">${c.ticker}</span><br>
            <span class="${badgeClass(c.veredicto)}" style="font-size:11px;margin-top:4px">${c.veredicto}</span>
          </div>
        </div>
        <div class="proj-card-body">
          <div class="proj-row"><span class="proj-label">Preço Atual (ao vivo)</span><span class="proj-val val-live" id="proj-price-${c.ticker}">${fmtPrice(price)}</span></div>
          <div class="proj-row"><span class="proj-label">Preço Justo (PJ)</span><span class="proj-val">${fmtPrice(c.pjBase)}</span></div>
          <div class="proj-row"><span class="proj-label">Upside vs PJ</span><span class="proj-val ${upsideClass(upside)}" id="proj-upside-${c.ticker}">${fmtPct(upside)}</span></div>
          <div class="proj-row"><span class="proj-label">Alvo Analistas</span><span class="proj-val">${c.alvoAnal}</span></div>
          <div class="proj-row"><span class="proj-label">Pontuação Factor</span><span class="proj-val">${c.score}</span></div>
          <p style="font-size:11px;color:var(--slate);margin:8px 0 4px;line-height:1.4">⚡ ${c.tip}</p>
          <div class="proj-scenarios">
            <div class="scenario-box scen-pess">
              <div class="sc-name">Pessimista</div>
              <div class="sc-alvo">${c.pess}</div>
              <div class="sc-ret" id="proj-pess-${c.ticker}">${retPessLive >= 0 ? '+' : ''}${retPessLive}%</div>
            </div>
            <div class="scenario-box scen-real">
              <div class="sc-name">Realista</div>
              <div class="sc-alvo">${fmtPrice(c.pjBase)}</div>
              <div class="sc-ret" id="proj-real-${c.ticker}">${retRealLive >= 0 ? '+' : ''}${retRealLive}%</div>
            </div>
            <div class="scenario-box scen-otim">
              <div class="sc-name">Otimista</div>
              <div class="sc-alvo">${c.otim}</div>
              <div class="sc-ret" id="proj-otim-${c.ticker}">${retOtimLive >= 0 ? '+' : ''}${retOtimLive}%</div>
            </div>
          </div>
        </div>
      </div>`;
    });
  });
  el.innerHTML = html;
}

// ══════════════════════════════════════════════════════════════
//  RENDER ANÁLISE DETALHADA
// ══════════════════════════════════════════════════════════════
/* REMOVED renderAnalise */ function _NOOP_renderAnalise() {
  const el = document.getElementById('analiseContent');
  let html = '';
  SUBSETORES_PET.forEach(sub => {
    html += `<div style="background:var(--green-50);border:1px solid var(--green-100);border-left:4px solid var(--green-600);border-radius:0 8px 8px 0;padding:10px 16px;font-weight:700;color:var(--green-800);font-size:15px;margin-bottom:4px;">${sub.nome}</div>`;
    const comps = sub.tickers.map(t => COMPANIES_PET.find(c => c.ticker === t)).filter(Boolean);
    comps.forEach(c => {
      const price = getPrice(c.ticker);
      const upside = getUpside(c.ticker);
      const scoreColor = c.scoreNum >= 20 ? '#166534' : c.scoreNum >= 16 ? '#16A34A' : c.scoreNum >= 12 ? '#D97706' : '#DC2626';
      html += `<div class="analise-card">
        <div class="analise-card-header">
          <div>
            <span class="analise-ticker">${c.ticker}</span>
            <span class="analise-nome" style="margin-left:10px">${c.nome}</span><br>
            <span style="font-size:12px;opacity:0.8;margin-top:4px;display:block">${c.icon} ${c.subsetor}</span>
          </div>
          <div style="text-align:right">
            <span class="analise-score">${c.score} · ${c.veredicto}</span><br>
            <span style="font-size:12px;margin-top:6px;display:block;opacity:0.85">Preço Justo: ${fmtPrice(c.pjBase)}</span>
          </div>
        </div>
        <div class="analise-card-body">
          <div class="analise-summary">
            <div class="analise-kpi"><div class="kpi-label">Preço Atual</div><div class="kpi-val" id="analise-price-${c.ticker}">${fmtPrice(price)}</div></div>
            <div class="analise-kpi"><div class="kpi-label">Upside/Down</div><div class="kpi-val ${upsideClass(upside)}" id="analise-upside-${c.ticker}">${fmtPct(upside)}</div></div>
            <div class="analise-kpi"><div class="kpi-label">ROIC</div><div class="kpi-val">${c.roic}</div></div>
            <div class="analise-kpi"><div class="kpi-label">ROE</div><div class="kpi-val">${c.roe}</div></div>
            <div class="analise-kpi"><div class="kpi-label">P/L</div><div class="kpi-val">${c.pl}</div></div>
            <div class="analise-kpi"><div class="kpi-label">EV/EBIT</div><div class="kpi-val">${c.evEbit}</div></div>
            <div class="analise-kpi"><div class="kpi-label">Div. Yield</div><div class="kpi-val">${c.dy}</div></div>
            <div class="analise-kpi"><div class="kpi-label">Dív/Ativo</div><div class="kpi-val">${c.divAtivo}</div></div>
          </div>
          <div class="analise-section">
            <div class="analise-section-title">✅ PONTOS POSITIVOS</div>
            <div class="analise-section-content">${c.pontos_pos}</div>
          </div>
          <div class="analise-section">
            <div class="analise-section-title" style="background:#FEF2F2;border-left-color:#DC2626;color:#991B1B">⚠️ PONTOS NEGATIVOS</div>
            <div class="analise-section-content neg">${c.pontos_neg}</div>
          </div>
          <div class="analise-section">
            <div class="analise-section-title" style="background:#EFF6FF;border-left-color:#2563EB;color:#1D4ED8">💰 FLUXO DE CAIXA</div>
            <div class="analise-section-content" style="color:var(--slate)">${c.fco}</div>
          </div>
          <div class="analise-section">
            <div class="analise-section-title" style="background:#F5F3FF;border-left-color:#7C3AED;color:#5B21B6">📊 VALUATION / DCF</div>
            <div class="analise-section-content" style="color:var(--slate)">${c.dcf}</div>
          </div>
          <div class="analise-section">
            <div class="analise-section-title" style="background:#ECFDF5;border-left-color:#059669;color:#065F46">🎯 ESTRATÉGIA</div>
            <div class="analise-section-content" style="font-weight:600;color:var(--green-800)">${c.estrategiaDetalhe}</div>
          </div>
        </div>
      </div>`;
    });
  });
  el.innerHTML = html;
}

// ══════════════════════════════════════════════════════════════
//  RENDER QUADRO DECISÓRIO
// ══════════════════════════════════════════════════════════════
/* REMOVED renderDecisorio */ function _NOOP_renderDecisorio() {
  const el = document.getElementById('decisorioContent');
  let html = '';
  SUBSETORES_PET.forEach(sub => {
    const comps = sub.tickers.map(t => COMPANIES_PET.find(c => c.ticker === t)).filter(Boolean);
    html += `<div class="decisorio-section">
      <div class="decisorio-header">${sub.nome}</div>
      <div style="overflow-x:auto">
      <table class="decisorio-table"><thead><tr>
        <th>Rank</th><th>Ticker</th><th>Nome</th><th>Pontuação</th>
        <th>Veredicto</th><th>Momento</th><th>Preço Atual</th><th>Preço Justo</th>
        <th>Upside/Down</th><th>Classificação</th><th>Estratégia</th>
      </tr></thead><tbody>`;
    comps.forEach((c, idx) => {
      const price = getPrice(c.ticker);
      const upside = getUpside(c.ticker);
      html += `<tr>
        <td class="rank-num">${idx+1}</td>
        <td><span class="ticker-chip">${c.ticker}</span></td>
        <td style="font-weight:500;min-width:130px">${c.nome}</td>
        <td><strong>${c.score}</strong></td>
        <td><span class="${badgeClass(c.veredicto)}">${c.veredicto}</span></td>
        <td style="font-size:12px;color:var(--slate)">${c.momento}</td>
        <td class="val-live" id="dec-price-${c.ticker}">${fmtPrice(price)}</td>
        <td class="val-price">${fmtPrice(c.pjBase)}</td>
        <td><span class="${upsideClass(upside)}" id="dec-upside-${c.ticker}">${fmtPct(upside)}</span></td>
        <td>${classifHTML(c)}</td>
        <td class="strategy-text">${c.estrategia}</td>
      </tr>`;
    });
    html += '</tbody></table></div></div>';
  });
  el.innerHTML = html;
}

// ══════════════════════════════════════════════════════════════
//  RENDER ALL & AUTO-REFRESH
// ══════════════════════════════════════════════════════════════
/* REMOVED renderAll */ function _NOOP_renderAll() {
  renderRanking();
  renderFactor();
  renderMestra();
  renderProjecoes();
  renderAnalise();
  renderDecisorio();
  updateTopUpside();
}

// Auto-refresh: 90s mercado aberto, 5min fechado
/* REMOVED scheduleRefresh */ function _NOOP_scheduleRefresh() {
  const interval = isMarketOpen() ? 90000 : 300000;
  setTimeout(async () => {
    /* scheduleRefresh handled globally */
  }, interval);
}

// ══════════════════════════════════════════════════════════════
//  INIT
// ══════════════════════════════════════════════════════════════
// renderAll() handled globally
// fetchAllPrices() handled globally

const PET_COMPANIES = COMPANIES_PET;
const PET_SUBSETORES = SUBSETORES_PET;
</script>

<script>
// ─── IMOBILIÁRIO DATA ────────────────────────────────────

// ══════════════════════════════════════════════════════════════
//  DADOS — SETOR IMOBILIÁRIO B3
// ══════════════════════════════════════════════════════════════
const COMPANIES_IMO = [
  {ticker:"TEND3",name:"Construtora Tenda",sub:"MCMV/Econômica",preco:34.02,pj:37.42,
   roic:.2042,roa:.0809,roe:.4483,pl:8.09,evebit:8.13,pbook:3.41,pfco:14.10,
   dy:.0365,divcap:.2487,crescdiv:.2455,score:12,
   pj_r:37.42,pj_o:44.90,pj_p:29.94,
   entrada:"R$30–32",stop:"R$27,00",t1:"R$37,42",t2:"R$44,90",
   desc:"Incorporadora 100% MCMV. Líder em habitação popular com ROIC excepcional de 20,4% e Piotroski 9/9.",
   pos:["ROIC 20,4% — líder de retorno no MCMV","ROE 44,8% — alta rentabilidade","Piotroski Score 9/9","Dívida/Capital 24,9% — estrutura sólida","Receita R$4,2B crescendo"],
   neg:["DY baixo 3,65%","P/Book 3,4x — sem desconto","Cresc. dívida +24,6%","Dependência de subsídios MCMV"],
   cash:"FCO positivo R$290M. Modelo asset-light garante consistência.",
   val:"PJ R$37,42 (+10%). EV/EBIT 8,1x justo para crescimento esperado.",
   strat:"NEUTRO | Empresa excelente já precificada. Compra abaixo de R$30–32."},
  {ticker:"DIRR3",name:"Direcional Eng.",sub:"MCMV/Econômica",preco:14.27,pj:15.92,
   roic:.1893,roa:.0841,roe:.4312,pl:9.34,evebit:8.30,pbook:3.85,pfco:18.51,
   dy:.2308,divcap:.2769,crescdiv:.7634,score:12,
   pj_r:15.92,pj_o:19.10,pj_p:12.74,
   entrada:"R$12,50–13,50",stop:"R$11,00",t1:"R$15,92",t2:"R$19,10",
   desc:"Incorporadora MCMV em 20+ estados. Referência em dividendos no segmento econômico.",
   pos:["ROIC 18,9%","ROE 43,1%","DY 23,5% — maior do setor","FCO positivo R$398M","Diversificação geográfica"],
   neg:["P/Book 3,85x","Cresc. dívida +76,3%","P/FCO 18,5x — caro"],
   cash:"FCO R$398M sustenta DY de 23,5%. Histórico sólido.",
   val:"PJ R$15,92 (+11,6%). EV/EBIT 8,3x.",
   strat:"NEUTRO | Top para dividendos. Entrada R$12,50–13,50."},
  {ticker:"MRVE3",name:"MRV Engenharia",sub:"MCMV/Econômica",preco:7.92,pj:9.78,
   roic:.0669,roa:-.036,roe:-.1531,pl:-4.21,evebit:6.56,pbook:.82,pfco:8.10,
   dy:.00,divcap:.624,crescdiv:-.1397,score:10,
   pj_r:9.78,pj_o:11.74,pj_p:7.82,
   entrada:"R$7,00–7,50",stop:"R$5,80",t1:"R$9,78",t2:"R$11,74",
   desc:"Maior incorporadora MCMV do Brasil. Turnaround da operação AHS (EUA). FCO em recuperação.",
   pos:["EV/EBIT 6,6x — valuation barato","Upside +23,5%","EV/Capital 0,70x","FCO retomada R$542M","Desalavancagem -14%"],
   neg:["Prejuízo R$1,04B","ROE -15,3%","Dívida/Capital 62,4%","Sem dividendos"],
   cash:"FCO negativo antes, recuperação 2025. Desinvestimento AHS é catalisador.",
   val:"PJ R$9,78 (+23,5%). Pessimista próximo ao preço — suporte.",
   strat:"AGUARDAR | Turnaround alto risco. Para arrojado: R$7,00–7,50."},
  {ticker:"EZTC3",name:"Eztec",sub:"Média/Alta Renda",preco:15.53,pj:18.43,
   roic:.0473,roa:.0802,roe:.1095,pl:7.78,evebit:10.39,pbook:.83,pfco:8.26,
   dy:.0814,divcap:.2888,crescdiv:.4884,score:13,
   pj_r:18.43,pj_o:22.12,pj_p:14.74,
   entrada:"R$14,00–15,00",stop:"R$12,00",t1:"R$18,43",t2:"R$22,12",
   desc:"Incorporadora premium Zona Sul SP. 18 anos consecutivos de dividendos. Solidez financeira referência.",
   pos:["Margem líquida ~35,7%","EV/Capital 0,65x","P/Book 0,83x","18 anos de dividendos","Dívida/Capital 28,9%"],
   neg:["ROIC 4,7% — abaixo custo capital","Cresc. dívida +48,8%","Lançamentos conservadores"],
   cash:"FCO positivo R$503,8M. Autofinancia crescimento. Base para dividendos.",
   val:"PJ R$18,43 (+18,7%). P/Book 0,83x oferece margem de segurança.",
   strat:"NEUTRO | Qualidade com valuation razoável. Compra abaixo R$14."},
  {ticker:"LAVV3",name:"Lavvi",sub:"Média/Alta Renda",preco:15.29,pj:15.65,
   roic:.1134,roa:.1169,roe:.2636,pl:7.19,evebit:9.02,pbook:1.99,pfco:-17.04,
   dy:.1771,divcap:.2871,crescdiv:.9891,score:13,
   pj_r:15.65,pj_o:18.78,pj_p:12.52,
   entrada:"R$13,00–14,00",stop:"R$11,50",t1:"R$15,65",t2:"R$18,78",
   desc:"Incorporadora médio/alto padrão SP. JV com Cyrela. Alto DY e rentabilidade acima da média.",
   pos:["ROA 11,7% e ROE 26,4%","Margem 23,5%","DY 17,7%","Crescimento consistente"],
   neg:["FCO negativo R$-44,4M","Cresc. dívida +98,9%","Upside 2,4%","P/Book 2,0x"],
   cash:"FCO negativo: ciclo de construção intenso. Normaliza com entregas 2025–2026.",
   val:"PJ R$15,65 (+2,4%). Upside limitado no realista.",
   strat:"NEUTRO | Qualidade mas preço justo agora. Entrada R$13–14."},
  {ticker:"TRIS3",name:"Trisul",sub:"Média/Alta Renda",preco:5.89,pj:6.79,
   roic:.0755,roa:.0658,roe:.1437,pl:6.66,evebit:7.79,pbook:.936,pfco:29.32,
   dy:.1872,divcap:.4336,crescdiv:.2909,score:15,
   pj_r:6.79,pj_o:8.15,pj_p:5.43,
   entrada:"R$5,50–6,20",stop:"R$4,80",t1:"R$6,79",t2:"R$8,15",
   desc:"Incorporadora médio padrão interior SP. 13 anos consecutivos de dividendos.",
   pos:["P/L 6,7x e EV/EBIT 7,8x — valuation atrativo","DY 18,7%","EV/Capital 0,74x","13 anos de dividendos"],
   neg:["P/FCO 29,3x — alto","Cresc. dívida +29,1%","Menor escala"],
   cash:"FCO R$46,3M. Dividendos via lucro contábil. Sustentabilidade monitorar.",
   val:"PJ R$6,79 (+15,3%). Otimista R$8,15 (+38%).",
   strat:"COMPRA | Valuation barato + DY alto. Entrada até R$6,20."},
  {ticker:"HBOR3",name:"Helbor",sub:"Média/Alta Renda",preco:2.48,pj:2.28,
   roic:.0186,roa:.0139,roe:.0335,pl:28.52,evebit:25.64,pbook:.222,pfco:10.45,
   dy:.0613,divcap:.5331,crescdiv:-.0594,score:8,
   pj_r:2.28,pj_o:2.74,pj_p:1.82,
   entrada:"Evitar",stop:"R$1,80",t1:"R$2,28",t2:"R$2,74",
   desc:"Incorporadora médio/alto padrão em reestruturação. ROIC 1,9%. PJ abaixo do preço atual.",
   pos:["P/Book 0,22x — desconto extremo","EV/Capital 0,71x","FCO R$713M LTM","Dívida -5,9%"],
   neg:["ROIC 1,9% insuficiente","P/L 28,5x — caro","Upside -8,1%","Dívida/Capital 53%"],
   cash:"FCO R$713M LTM positivo. Sustentabilidade incerta. Reflete contratos antigos.",
   val:"PJ R$2,28 (-8,1% vs. preço). Empresa está acima do PJ.",
   strat:"VENDA | PJ abaixo do preço. Múltiplos caros para retornos baixos."},
  {ticker:"EVEN3",name:"Even Const.",sub:"Média/Alta Renda",preco:7.26,pj:7.32,
   roic:.0569,roa:.0575,roe:.1403,pl:5.93,evebit:8.68,pbook:.75,pfco:15.86,
   dy:.1064,divcap:.4638,crescdiv:.2669,score:12,
   pj_r:7.32,pj_o:8.78,pj_p:5.86,
   entrada:"R$6,50–6,80",stop:"R$5,50",t1:"R$7,32",t2:"R$8,78",
   desc:"Incorporadora médio padrão SP e RS. P/L 5,9x, P/Book 0,75x, DY 10,6%.",
   pos:["P/L 5,9x e P/Book 0,75x","EV/Capital 0,61x","DY 10,6%","ROE 14%"],
   neg:["ROIC 5,7%","FCO negativo","Upside 0,8%","Dívida/Capital 46,4%"],
   cash:"FCO negativo: fase de crescimento. Dividendos via lucro.",
   val:"PJ R$7,32 (+0,8%). Otimista R$8,78 (+21%).",
   strat:"NEUTRO | Valuation barato mas upside limitado. Entrada R$6,50–6,80."},
  {ticker:"CYRE3",name:"Cyrela",sub:"Média/Alta Renda",preco:28.00,pj:36.64,
   roic:.0755,roa:.1012,roe:.2237,pl:5.04,evebit:6.32,pbook:.99,pfco:-28.24,
   dy:.1366,divcap:.4145,crescdiv:.4156,score:19,
   pj_r:36.64,pj_o:43.97,pj_p:29.31,
   entrada:"R$25–28",stop:"R$22,00",t1:"R$36,64",t2:"R$43,97",
   desc:"Referência do segmento médio/alto. Maior incorporadora por rentabilidade. Melhor risco/retorno do subsetor.",
   pos:["ROA 10,1% e ROE 22,4%","P/L 5,0x e EV/EBIT 6,3x","Upside +30,9%","DY 13,7%","Margem 21,2%"],
   neg:["FCO negativo R$-620M","Cresc. dívida +41,6%","Sensível a juros"],
   cash:"FCO negativo: ciclo de investimentos. Normaliza na fase de entregas.",
   val:"PJ R$36,64 (+30,9%). Otimista R$43,97 (+57%). Excelente assimetria.",
   strat:"COMPRA FORTE | Melhor risco/retorno do subsetor. Meta R$36–38."},
  {ticker:"MDNE3",name:"Moura Dubeux",sub:"Média/Alta Renda",preco:33.26,pj:34.89,
   roic:.1802,roa:.0865,roe:.2753,pl:8.24,evebit:8.56,pbook:2.281,pfco:-43.80,
   dy:.1284,divcap:.2029,crescdiv:.7129,score:12,
   pj_r:34.89,pj_o:41.87,pj_p:27.91,
   entrada:"R$28–30",stop:"R$25,00",t1:"R$34,89",t2:"R$41,87",
   desc:"Incorporadora alto padrão Nordeste. Posição dominante PE, CE, BA. ROIC 18%.",
   pos:["ROIC 18%","ROE 27,5%","DY 12,8%","Dívida/Capital 20,3%","Domínio Nordeste"],
   neg:["FCO negativo -R$390M","Cresc. dívida +71,3%","Upside 4,9%"],
   cash:"FCO negativo em expansão regional. Caixa melhora com entregas.",
   val:"PJ R$34,89 (+4,9%). Otimista R$41,87 (+26%).",
   strat:"NEUTRO | Qualidade premium mas bem precificada. Entrada R$28–30."},
  {ticker:"JHSF3",name:"JHSF",sub:"Luxo/Premium",preco:12.62,pj:15.56,
   roic:.1258,roa:.1172,roe:.2881,pl:4.49,evebit:5.49,pbook:1.26,pfco:2.32,
   dy:.0657,divcap:.3972,crescdiv:.2556,score:20,
   pj_r:15.56,pj_o:18.67,pj_p:12.45,
   entrada:"R$12,00–12,50",stop:"R$10,50",t1:"R$15,56",t2:"R$18,67",
   desc:"Gestora de ativos de luxo: JK Iguatemi, Catarina Outlet, Fasano, cidades corporativas e residenciais premium.",
   pos:["Score 20/26 — maior do setor","ROE 28,8% e ROIC 12,6%","Margem ~54%","P/L 4,5x e EV/EBIT 5,5x","Upside +23,3%"],
   neg:["FCO negativo -R$105M","Dívida R$5,9B","Cresc. dívida +25,6%"],
   cash:"FCO negativo: expansão de portfólio (Catarina Outlet, Fasano Itaim). Normaliza com maturação.",
   val:"PJ R$15,56 (+23,3%). Otimista R$18,67 (+48%). EV/EBITDA 5,5x justificado.",
   strat:"COMPRA FORTE | Top Pick do setor. Score máximo. Meta R$15,56–18,67."},
  {ticker:"MULT3",name:"Multiplan",sub:"Shopping Centers",preco:33.75,pj:32.19,
   roic:.1321,roa:.0889,roe:.1911,pl:14.37,evebit:11.62,pbook:2.603,pfco:11.20,
   dy:.0312,divcap:.2502,crescdiv:.0008,score:11,
   pj_r:32.19,pj_o:38.63,pj_p:25.75,
   entrada:"R$28–30",stop:"R$24,00",t1:"R$32,19",t2:"R$38,63",
   desc:"Gestora de shoppings premium (BarraShopping, ParkShopping). 17 anos consecutivos de dividendos.",
   pos:["Margem líquida 41,7%","17 anos dividendos","FCO R$1,46B","Dívida/Capital 25%"],
   neg:["Upside -4,6% — acima do PJ","P/L 14,4x elevado","DY baixo 3,1%"],
   cash:"FCO R$1,46B recorrente via aluguéis. 17 anos de dividendos. Qualidade referência.",
   val:"PJ R$32,19 (-4,6%). Acima do PJ. Otimista R$38,63 (+14%).",
   strat:"AGUARDAR | Excelente mas cara. Entrada R$28–30."},
  {ticker:"ALOS3",name:"Allos",sub:"Shopping Centers",preco:33.14,pj:37.26,
   roic:.0613,roa:.0355,roe:.0674,pl:19.69,evebit:14.02,pbook:1.25,pfco:9.52,
   dy:.0778,divcap:.2663,crescdiv:-.1562,score:11,
   pj_r:37.26,pj_o:44.71,pj_p:29.81,
   entrada:"R$30–32",stop:"R$26,00",t1:"R$37,26",t2:"R$44,71",
   desc:"Maior gestora de shoppings do Brasil (fusão Iguatemi + BR Malls). 62 ativos, ocupação 97,6%.",
   pos:["Piotroski 9/9","Ocupação 97,6%","FCO R$1,73B","Dívida -15,6%","Upside 12,4%"],
   neg:["ROIC 6,1% baixo","P/L 19,7x","ROE 6,7%"],
   cash:"FCO R$1,73B previsível. Desalavancagem melhora perfil.",
   val:"PJ R$37,26 (+12,4%). Otimista R$44,71 (+35%).",
   strat:"AGUARDAR | Boa empresa, múltiplos elevados. Entrada R$30–32."},
  {ticker:"GFSA3",name:"Gafisa",sub:"Reestruturação",preco:1.47,pj:1.80,
   roic:-.0891,roa:-.1086,roe:-.3121,pl:-.067,evebit:-2.75,pbook:.024,pfco:-.196,
   dy:.00,divcap:.9779,crescdiv:-.1485,score:8,
   pj_r:1.80,pj_o:2.16,pj_p:1.44,
   entrada:"Especulativo: R$1,20–1,30",stop:"R$0,90",t1:"R$1,80",t2:"R$2,16",
   desc:"Incorporadora em severa reestruturação. Prejuízo recorrente, dívida crítica, FCO negativo.",
   pos:["P/Book 0,024x — desconto extremo","Upside especulativo 22,8%","Dívida -14,8%"],
   neg:["Prejuízo R$544,5M","ROIC -8,9%","FCO -R$185M","Dívida/Capital 97,8%","Receita caindo"],
   cash:"FCO -R$185M. Risco de reestruturação de dívida ou aumento de capital.",
   val:"PJ R$1,80 (+22,8%). Alto risco de diluição.",
   strat:"ESPECULATIVO/VENDA | Stop rígido. Risco de perda total."},
];

const SCORES_RAW = {
  TEND3:[2,1,2,1,1,0,1,0,1,2,1,0,0],
  DIRR3:[2,1,2,1,1,0,0,2,1,1,1,0,0],
  MRVE3:[0,0,0,0,2,1,1,0,0,0,2,2,2],
  EZTC3:[0,1,1,1,1,1,1,1,2,1,1,2,0],
  LAVV3:[1,2,2,1,1,0,0,2,2,1,0,1,0],
  TRIS3:[1,1,1,2,2,1,0,2,1,1,1,2,0],
  HBOR3:[0,0,0,0,0,2,1,1,0,0,0,2,2],
  EVEN3:[0,1,1,2,1,2,0,2,1,0,0,2,0],
  CYRE3:[1,2,2,2,2,1,0,2,2,1,2,2,0],
  MDNE3:[2,1,2,1,1,0,0,2,1,2,0,0,0],
  JHSF3:[1,2,2,2,2,1,2,1,2,1,2,2,0],
  MULT3:[1,1,1,1,1,0,1,0,2,2,0,0,1],
  ALOS3:[0,0,0,0,1,1,1,1,2,1,1,1,2],
  GFSA3:[0,0,0,0,0,2,0,0,0,0,2,2,2],
};

const SUBSETORES_IMO = [
  { nome:'🏠 MCMV / Econômica',   tickers:['TEND3','DIRR3','MRVE3'] },
  { nome:'🏘️ Média / Alta Renda', tickers:['CYRE3','TRIS3','EZTC3','LAVV3','EVEN3','MDNE3','HBOR3'] },
  { nome:'💎 Luxo / Premium',      tickers:['JHSF3'] },
  { nome:'🏪 Shopping Centers',    tickers:['ALOS3','MULT3'] },
  { nome:'🔄 Reestruturação',      tickers:['GFSA3'] },
];

// FACTOR_CRITERIA global

// ══════════════════════════════════════════════════════════════
//  COTAÇÕES AO VIVO
// ══════════════════════════════════════════════════════════════
// livePrices global
// lastFetchTime global
// marketOpen global

/* REMOVED isMarketOpen */

async function _NOOP_fetchAllPrices() {
  const btn = document.getElementById('updateBtn');
  const statusEl = document.getElementById('priceStatus');
  const marketEl = document.getElementById('marketStatus');
  btn.classList.add('loading');
  document.getElementById('updateBtnText').textContent = 'Buscando...';

  const tickers = COMPANIES_IMO.map(c => c.ticker);
  marketOpen = isMarketOpen();
  marketEl.textContent = marketOpen ? '🟢 Mercado Aberto (B3)' : '🔴 Mercado Fechado — Último Fechamento';

  try {
    const tickerStr = tickers.join(',');
    const url = `https://brapi.dev/api/quote/${tickerStr}?range=1d&interval=1d&fundamental=false&dividends=false`;
    const res = await fetch(url, { signal: AbortSignal.timeout(8000) });
    if (!res.ok) throw new Error('brapi error');
    const data = await res.json();
    if (data.results) {
      data.results.forEach(r => {
        if (r.regularMarketPrice) livePrices[r.symbol] = r.regularMarketPrice;
      });
    }
    lastFetchTime = new Date();
    statusEl.textContent = `${marketOpen ? '🟢 Ao vivo' : '🔴 Fechamento'} · ${lastFetchTime.toLocaleTimeString('pt-BR')}`;
    statusEl.className = 'price-status live';
  } catch(e1) {
    try {
      for (const ticker of tickers) {
        try {
          const proxyUrl = `https://corsproxy.io/?${encodeURIComponent(`https://query1.finance.yahoo.com/v8/finance/chart/${ticker}.SA?interval=1d&range=1d`)}`;
          const res = await fetch(proxyUrl, { signal: AbortSignal.timeout(5000) });
          const data = await res.json();
          const price = data?.chart?.result?.[0]?.meta?.regularMarketPrice;
          if (price) livePrices[ticker] = price;
        } catch {}
      }
      lastFetchTime = new Date();
      statusEl.textContent = `Via Yahoo · ${lastFetchTime.toLocaleTimeString('pt-BR')}`;
      statusEl.className = 'price-status live';
    } catch(e2) {
      statusEl.textContent = 'Cotação ao vivo indisponível · Usando base 13/04/2026';
      statusEl.className = 'price-status';
    }
  }

  btn.classList.remove('loading');
  document.getElementById('updateBtnText').textContent = '⟳ Atualizar Cotações';
  // renderAll() handled globally
  updateTopUpside();
}

/* REMOVED getPrice */

/* REMOVED getUpside */

/* REMOVED fmtPrice */
/* REMOVED fmtPct */
/* REMOVED upsideClass */

/* REMOVED getVeredictoFromUpside */ function _NOOP_getVeredictoFromUpside() {
  if (upside >= 20) return '✅ COMPRA FORTE';
  if (upside >= 5)  return '✅ COMPRA';
  if (upside >= -5) return '💛 PREÇO JUSTO';
  if (upside >= -15)return '⚠️ ATENÇÃO';
  return '🔴 CARO';
}

/* REMOVED badgeClass */

/* REMOVED classifHTML */

/* REMOVED scoreColor */
/* REMOVED scoreEmoji */

/* REMOVED updateTopUpside */ function _NOOP_updateTopUpside() {
  const sorted = COMPANIES_IMO.map(c => ({ ticker:c.ticker, upside:getUpside(c.ticker) }))
    .sort((a,b) => b.upside - a.upside);
  const top2 = sorted.slice(0,2);
  document.getElementById('topUpsideBar').textContent = top2.map(x => `${x.ticker} ${fmtPct(x.upside)}`).join(' · ');
}

// ══════════════════════════════════════════════════════════════
//  ADAPTER — normaliza campos para o template
// ══════════════════════════════════════════════════════════════
COMPANIES_IMO.forEach((c, i) => {
  c.precoBase = c.preco;
  c.pjBase    = c.pj;
  c.nome      = c.name;
  c.subsetor  = c.sub;
  c.scoreNum  = c.score;

  // Percentuais formatados
  const pct = (v, d=1) => isFinite(v) ? (v*100).toFixed(d)+'%' : 'N/D';
  const mx  = (v, d=1) => isFinite(v) && v > 0 ? v.toFixed(d)+'x' : (isFinite(v) ? 'Neg.' : 'N/D');
  c.roic    = pct(c.roic);
  c.roa     = pct(c.roa);
  c.roe     = pct(c.roe);
  c.pl      = isFinite(c.pl) && c.pl > 0 ? c.pl.toFixed(1)+'x' : 'Neg.';
  c.evEbit  = isFinite(c.evebit) && c.evebit > 0 ? c.evebit.toFixed(1)+'x' : 'Neg.';
  c.dy      = pct(c.dy);
  c.divAtivo= pct(c.divcap);
  c.crescDiv= (c.crescdiv >= 0 ? '+' : '') + pct(c.crescdiv);
  c.pfco    = isFinite(c.pfco) && c.pfco > 0 ? c.pfco.toFixed(1)+'x' : 'Neg.';
  c.pbook   = c.pbook.toFixed(2)+'x';

  // Heatmap
  c.hm = SCORES_RAW[c.ticker] || Array(13).fill(1);

  // Cenários
  c.pess = fmtPrice(c.pj_p);
  c.otim = fmtPrice(c.pj_o);

  // Análise detalhada
  c.pontos_pos      = c.pos.map(p => '• '+p).join('\n');
  c.pontos_neg      = c.neg.map(n => '• '+n).join('\n');
  c.fco             = c.cash;
  c.dcf             = c.val;
  c.estrategiaDetalhe = c.strat;
  c.estrategia      = c.strat;
  c.tip             = c.desc;
  c.alvoAnal        = c.t1;
  c.ret1a           = 'N/D';

  // Sub-setor icon
  const icons = {'MCMV/Econômica':'🏠','Média/Alta Renda':'🏘️','Luxo/Premium':'💎','Shopping Centers':'🏪','Reestruturação':'🔄'};
  c.icon = icons[c.sub] || '🏢';

  // Campos extras (tabela mestra)
  c.divida  = 'N/D';
  c.receita = 'N/D';
  c.ebitda  = 'N/D';
  c.momento = ['📉 Queda','➡️ Lateral','📈 Forte Alta'][c.hm[12]] || '➡️ Lateral';
});

// Ordenar por score desc e re-rankear
COMPANIES_IMO.sort((a,b) => b.scoreNum - a.scoreNum);
COMPANIES_IMO.forEach((c,i) => { c.rank = i+1; });

// ══════════════════════════════════════════════════════════════
//  TABS
// ══════════════════════════════════════════════════════════════
/* REMOVED showTab */ function _NOOP_showTab() {
  document.querySelectorAll('.section').forEach(s => s.classList.remove('active'));
  document.querySelectorAll('.tab-btn').forEach(b => b.classList.remove('active'));
  document.getElementById('tab-' + id).classList.add('active');
  btn.classList.add('active');
}

// ══════════════════════════════════════════════════════════════
//  RENDER RANKING
// ══════════════════════════════════════════════════════════════
/* REMOVED renderRanking */ function _NOOP_renderRanking() {
  const tbody = document.getElementById('rankingTbody');
  let html = '';
  SUBSETORES_IMO.forEach(sub => {
    const comps = sub.tickers.map(t => COMPANIES_IMO.find(c => c.ticker === t)).filter(Boolean);
    html += `<tr class="subsetor-header"><td colspan="17">${sub.nome}</td></tr>`;
    comps.forEach(c => {
      const price = getPrice(c.ticker);
      const upside = getUpside(c.ticker);
      const veredicto = getVeredictoFromUpside(upside);
      const sc = c.scoreNum;
      const barW = Math.round(sc / 26 * 100);
      const barColor = sc >= 20 ? '#166534' : sc >= 16 ? '#16A34A' : sc >= 12 ? '#D97706' : '#DC2626';
      html += `<tr>
        <td class="rank-num">${c.rank}</td>
        <td><span class="ticker-chip">${c.ticker}</span></td>
        <td style="font-weight:500;min-width:140px">${c.nome}</td>
        <td style="font-size:12px;color:var(--slate)">${c.icon} ${c.subsetor}</td>
        <td class="val-live" id="price-${c.ticker}">${fmtPrice(price)}</td>
        <td class="val-price">${fmtPrice(c.pjBase)}</td>
        <td>${classifHTML(c)}</td>
        <td><span class="${upsideClass(upside)}" id="upside-${c.ticker}">${fmtPct(upside)}</span></td>
        <td class="val-mono">${c.roic}</td>
        <td class="val-mono">${c.roa}</td>
        <td class="val-mono">${c.roe}</td>
        <td class="val-mono">${c.pl}</td>
        <td class="val-mono">${c.evEbit}</td>
        <td class="val-mono">${c.dy}</td>
        <td class="val-mono">${c.divAtivo}</td>
        <td><span class="${badgeClass(veredicto)}">${veredicto}</span></td>
        <td>
          <div class="score-display">
            <div class="score-bar-wrap"><div class="score-bar" style="width:${barW}%;background:${barColor}"></div></div>
            <span class="score-text" style="color:${barColor}">${c.score}</span>
          </div>
        </td>
      </tr>`;
    });
  });
  tbody.innerHTML = html;
}

// ══════════════════════════════════════════════════════════════
//  RENDER FACTOR DETALHADO
// ══════════════════════════════════════════════════════════════
/* REMOVED renderFactor */ function _NOOP_renderFactor() {
  const el = document.getElementById('factorContent');
  let html = '';
  SUBSETORES_IMO.forEach(sub => {
    const comps = sub.tickers.map(t => COMPANIES_IMO.find(c => c.ticker === t)).filter(Boolean);
    html += `<div class="heatmap-wrap"><div class="heatmap-header">${sub.nome}</div>
    <div style="overflow-x:auto"><table class="heatmap-table"><thead><tr>
      <th style="text-align:left">INDICADOR / FATOR</th>`;
    comps.forEach(c => {
      html += `<th>#${c.rank}<br><span style="font-family:JetBrains Mono,monospace;font-size:11px">${c.ticker}</span><br>${c.score}</th>`;
    });
    html += '</tr></thead><tbody>';
    FACTOR_CRITERIA.forEach((crit, fi) => {
      html += `<tr><td>${crit}</td>`;
      comps.forEach(c => {
        const s = c.hm[fi] ?? 0;
        html += `<td class="${scoreColor(s)}">${scoreEmoji(s)}<br>${s}</td>`;
      });
      html += '</tr>';
    });
    html += '<tr><td>▶ PONTUAÇÃO TOTAL (0–26)</td>';
    comps.forEach(c => { html += `<td>${c.score}</td>`; });
    html += '</tr></tbody></table></div></div>';
  });
  el.innerHTML = html;
}

// ══════════════════════════════════════════════════════════════
//  RENDER TABELA MESTRA
// ══════════════════════════════════════════════════════════════
/* REMOVED renderMestra */ function _NOOP_renderMestra() {
  const thead = document.getElementById('mestraThead');
  const tbody = document.getElementById('mestraTbody');
  const comps = COMPANIES_IMO;
  let hh = '<tr><th class="sticky-col" style="min-width:200px">INDICADOR</th>';
  comps.forEach(c => { hh += `<th>#${c.rank}<br>${c.ticker}</th>`; });
  hh += '</tr>';
  thead.innerHTML = hh;
  const rows = [
    { label:'  PREÇO & CLASSIFICAÇÃO', group:true },
    { label:'Preço Atual (R$)', fn: c => `<span class="val-live" id="mestra-price-${c.ticker}">${fmtPrice(getPrice(c.ticker))}</span>` },
    { label:'Preço Justo / Fair Value', fn: c => `<span class="val-price">${fmtPrice(c.pjBase)}</span>` },
    { label:'Classificação FV', fn: c => classifHTML(c) },
    { label:'Upside até PJ', fn: c => `<span class="${upsideClass(getUpside(c.ticker))}" id="mestra-upside-${c.ticker}">${fmtPct(getUpside(c.ticker))}</span>` },
    { label:'Alvo T1 (Analista)', fn: c => `<span class="val-mono">${c.alvoAnal}</span>` },
    { label:'Entrada Sugerida', fn: c => `<span class="val-mono">${c.entrada}</span>` },
    { label:'Stop Técnico', fn: c => `<span class="val-mono" style="color:var(--red)">${c.stop}</span>` },
    { label:'  RENTABILIDADE', group:true },
    { label:'ROIC', fn: c => c.roic },
    { label:'ROA',  fn: c => c.roa },
    { label:'ROE',  fn: c => c.roe },
    { label:'  VALUATION', group:true },
    { label:'P/L',     fn: c => c.pl },
    { label:'EV/EBIT', fn: c => c.evEbit },
    { label:'P/Book',  fn: c => c.pbook },
    { label:'P/FCO',   fn: c => c.pfco },
    { label:'  DIVIDENDOS', group:true },
    { label:'Dividend Yield', fn: c => c.dy },
    { label:'  SAÚDE FINANCEIRA', group:true },
    { label:'Dívida/Capital',  fn: c => c.divAtivo },
    { label:'Cresc. Dívida', fn: c => `<span style="color:${c.crescdiv_raw>0?'var(--red)':'var(--green-700)'}">${c.crescDiv}</span>` },
    { label:'  FACTOR INVEST', group:true },
    { label:'Pontuação Total', fn: c => `<strong>${c.score}</strong>` },
    { label:'Veredicto', fn: c => `<span class="${badgeClass(getVeredictoFromUpside(getUpside(c.ticker)))}">${getVeredictoFromUpside(getUpside(c.ticker))}</span>` },
    { label:'Sub-Setor', fn: c => `${c.icon} ${c.subsetor}` }
  ];
  let tb = '';
  rows.forEach(r => {
    if (r.group) {
      tb += `<tr class="subsetor-header"><td class="sticky-col" colspan="${comps.length+1}" style="font-size:11px;letter-spacing:0.5px">${r.label}</td></tr>`;
    } else {
      tb += `<tr><td class="sticky-col" style="font-weight:500;color:var(--slate);font-size:12px">${r.label}</td>`;
      comps.forEach(c => { tb += `<td style="text-align:center;font-size:12px;font-family:JetBrains Mono,monospace">${r.fn(c)}</td>`; });
      tb += '</tr>';
    }
  });
  tbody.innerHTML = tb;
}

// ══════════════════════════════════════════════════════════════
//  RENDER PROJEÇÕES
// ══════════════════════════════════════════════════════════════
/* REMOVED renderProjecoes */ function _NOOP_renderProjecoes() {
  const el = document.getElementById('projContent');
  let html = '';
  SUBSETORES_IMO.forEach(sub => {
    html += `<div style="grid-column:1/-1;background:var(--green-50);border:1px solid var(--green-100);border-left:4px solid var(--green-600);border-radius:0 8px 8px 0;padding:8px 14px;font-weight:700;color:var(--green-800);font-size:14px;">${sub.nome}</div>`;
    const comps = sub.tickers.map(t => COMPANIES_IMO.find(c => c.ticker === t)).filter(Boolean);
    comps.forEach(c => {
      const price = getPrice(c.ticker);
      const upside = getUpside(c.ticker);
      const veredicto = getVeredictoFromUpside(upside);
      const pessVal = c.pj_p;
      const realVal = c.pjBase;
      const otimVal = c.pj_o;
      const retPessLive = ((pessVal - price) / price * 100).toFixed(1);
      const retRealLive = ((realVal - price) / price * 100).toFixed(1);
      const retOtimLive = ((otimVal - price) / price * 100).toFixed(1);
      html += `<div class="proj-card">
        <div class="proj-card-header">
          <div>
            <div class="proj-card-title">${c.nome}</div>
            <div style="font-size:11px;opacity:0.75;margin-top:2px">${c.icon} ${c.subsetor}</div>
          </div>
          <div style="text-align:right">
            <span class="proj-card-ticker">${c.ticker}</span><br>
            <span class="${badgeClass(veredicto)}" style="font-size:11px;margin-top:4px">${veredicto}</span>
          </div>
        </div>
        <div class="proj-card-body">
          <div class="proj-row"><span class="proj-label">Preço Atual (ao vivo)</span><span class="proj-val val-live" id="proj-price-${c.ticker}">${fmtPrice(price)}</span></div>
          <div class="proj-row"><span class="proj-label">Preço Justo (PJ)</span><span class="proj-val">${fmtPrice(c.pjBase)}</span></div>
          <div class="proj-row"><span class="proj-label">Upside vs PJ</span><span class="proj-val ${upsideClass(upside)}" id="proj-upside-${c.ticker}">${fmtPct(upside)}</span></div>
          <div class="proj-row"><span class="proj-label">Entrada Sugerida</span><span class="proj-val">${c.entrada}</span></div>
          <div class="proj-row"><span class="proj-label">Stop Técnico</span><span class="proj-val" style="color:var(--red)">${c.stop}</span></div>
          <p style="font-size:11px;color:var(--slate);margin:8px 0 4px;line-height:1.4">⚡ ${c.tip}</p>
          <div class="proj-scenarios">
            <div class="scenario-box scen-pess">
              <div class="sc-name">Pessimista</div>
              <div class="sc-alvo">${c.pess}</div>
              <div class="sc-ret" id="proj-pess-${c.ticker}">${retPessLive >= 0 ? '+' : ''}${retPessLive}%</div>
            </div>
            <div class="scenario-box scen-real">
              <div class="sc-name">Realista</div>
              <div class="sc-alvo">${fmtPrice(c.pjBase)}</div>
              <div class="sc-ret" id="proj-real-${c.ticker}">${retRealLive >= 0 ? '+' : ''}${retRealLive}%</div>
            </div>
            <div class="scenario-box scen-otim">
              <div class="sc-name">Otimista</div>
              <div class="sc-alvo">${c.otim}</div>
              <div class="sc-ret" id="proj-otim-${c.ticker}">${retOtimLive >= 0 ? '+' : ''}${retOtimLive}%</div>
            </div>
          </div>
          <div class="stops-box">
            <div class="stop-item"><div class="stop-label">Entrada</div><div class="stop-val" style="color:var(--blue)">${c.entrada}</div></div>
            <div class="stop-item"><div class="stop-label">Stop</div><div class="stop-val" style="color:var(--red)">${c.stop}</div></div>
            <div class="stop-item"><div class="stop-label">Alvo T1</div><div class="stop-val" style="color:var(--green-700)">${c.t1}</div></div>
            <div class="stop-item"><div class="stop-label">Alvo T2</div><div class="stop-val" style="color:var(--green-800)">${c.t2}</div></div>
          </div>
        </div>
      </div>`;
    });
  });
  el.innerHTML = html;
}

// ══════════════════════════════════════════════════════════════
//  RENDER ANÁLISE DETALHADA
// ══════════════════════════════════════════════════════════════
/* REMOVED renderAnalise */ function _NOOP_renderAnalise() {
  const el = document.getElementById('analiseContent');
  let html = '';
  SUBSETORES_IMO.forEach(sub => {
    html += `<div style="background:var(--green-50);border:1px solid var(--green-100);border-left:4px solid var(--green-600);border-radius:0 8px 8px 0;padding:10px 16px;font-weight:700;color:var(--green-800);font-size:15px;margin-bottom:4px;">${sub.nome}</div>`;
    const comps = sub.tickers.map(t => COMPANIES_IMO.find(c => c.ticker === t)).filter(Boolean);
    comps.forEach(c => {
      const price = getPrice(c.ticker);
      const upside = getUpside(c.ticker);
      const veredicto = getVeredictoFromUpside(upside);
      const scoreClr = c.scoreNum >= 20 ? '#166534' : c.scoreNum >= 16 ? '#16A34A' : c.scoreNum >= 12 ? '#D97706' : '#DC2626';
      html += `<div class="analise-card">
        <div class="analise-card-header">
          <div>
            <span class="analise-ticker">${c.ticker}</span>
            <span class="analise-nome" style="margin-left:10px">${c.nome}</span><br>
            <span style="font-size:12px;opacity:0.8;margin-top:4px;display:block">${c.icon} ${c.subsetor}</span>
          </div>
          <div style="text-align:right">
            <span class="analise-score">${c.score} pts · ${veredicto}</span><br>
            <span style="font-size:12px;margin-top:6px;display:block;opacity:0.85">PJ: ${fmtPrice(c.pjBase)}</span>
          </div>
        </div>
        <div class="analise-card-body">
          <div class="analise-summary">
            <div class="analise-kpi"><div class="kpi-label">Preço Atual</div><div class="kpi-val" id="analise-price-${c.ticker}">${fmtPrice(price)}</div></div>
            <div class="analise-kpi"><div class="kpi-label">Upside/Down</div><div class="kpi-val ${upsideClass(upside)}" id="analise-upside-${c.ticker}">${fmtPct(upside)}</div></div>
            <div class="analise-kpi"><div class="kpi-label">ROIC</div><div class="kpi-val">${c.roic}</div></div>
            <div class="analise-kpi"><div class="kpi-label">ROE</div><div class="kpi-val">${c.roe}</div></div>
            <div class="analise-kpi"><div class="kpi-label">P/L</div><div class="kpi-val">${c.pl}</div></div>
            <div class="analise-kpi"><div class="kpi-label">EV/EBIT</div><div class="kpi-val">${c.evEbit}</div></div>
            <div class="analise-kpi"><div class="kpi-label">Div. Yield</div><div class="kpi-val">${c.dy}</div></div>
            <div class="analise-kpi"><div class="kpi-label">Dív/Capital</div><div class="kpi-val">${c.divAtivo}</div></div>
          </div>
          <div class="analise-section">
            <div class="analise-section-title">✅ PONTOS POSITIVOS</div>
            <div class="analise-section-content">${c.pontos_pos}</div>
          </div>
          <div class="analise-section">
            <div class="analise-section-title" style="background:#FEF2F2;border-left-color:#DC2626;color:#991B1B">⚠️ PONTOS NEGATIVOS</div>
            <div class="analise-section-content neg">${c.pontos_neg}</div>
          </div>
          <div class="analise-section">
            <div class="analise-section-title" style="background:#EFF6FF;border-left-color:#2563EB;color:#1D4ED8">💰 FLUXO DE CAIXA</div>
            <div class="analise-section-content" style="color:var(--slate)">${c.fco}</div>
          </div>
          <div class="analise-section">
            <div class="analise-section-title" style="background:#F5F3FF;border-left-color:#7C3AED;color:#5B21B6">📊 VALUATION / DCF</div>
            <div class="analise-section-content" style="color:var(--slate)">${c.dcf}</div>
          </div>
          <div class="analise-section">
            <div class="analise-section-title" style="background:#ECFDF5;border-left-color:#059669;color:#065F46">🎯 ESTRATÉGIA</div>
            <div class="analise-section-content" style="font-weight:600;color:var(--green-800)">${c.estrategiaDetalhe}</div>
          </div>
        </div>
      </div>`;
    });
  });
  el.innerHTML = html;
}

// ══════════════════════════════════════════════════════════════
//  RENDER QUADRO DECISÓRIO
// ══════════════════════════════════════════════════════════════
/* REMOVED renderDecisorio */ function _NOOP_renderDecisorio() {
  const el = document.getElementById('decisorioContent');
  let html = '';
  SUBSETORES_IMO.forEach(sub => {
    const comps = sub.tickers.map(t => COMPANIES_IMO.find(c => c.ticker === t)).filter(Boolean);
    html += `<div class="decisorio-section">
      <div class="decisorio-header">${sub.nome}</div>
      <div style="overflow-x:auto">
      <table class="decisorio-table"><thead><tr>
        <th>Rank</th><th>Ticker</th><th>Nome</th><th>Score</th>
        <th>Veredicto</th><th>Momento</th><th>Preço Atual</th><th>Preço Justo</th>
        <th>Upside/Down</th><th>Classif.</th>
        <th>Entrada</th><th>Stop</th><th>Alvo T1</th>
        <th>Estratégia</th>
      </tr></thead><tbody>`;
    comps.forEach((c, idx) => {
      const price = getPrice(c.ticker);
      const upside = getUpside(c.ticker);
      const veredicto = getVeredictoFromUpside(upside);
      html += `<tr>
        <td class="rank-num">${idx+1}</td>
        <td><span class="ticker-chip">${c.ticker}</span></td>
        <td style="font-weight:500;min-width:130px">${c.nome}</td>
        <td><strong>${c.score}</strong></td>
        <td><span class="${badgeClass(veredicto)}">${veredicto}</span></td>
        <td style="font-size:12px;color:var(--slate)">${c.momento}</td>
        <td class="val-live" id="dec-price-${c.ticker}">${fmtPrice(price)}</td>
        <td class="val-price">${fmtPrice(c.pjBase)}</td>
        <td><span class="${upsideClass(upside)}" id="dec-upside-${c.ticker}">${fmtPct(upside)}</span></td>
        <td>${classifHTML(c)}</td>
        <td style="font-size:11px;color:var(--blue)">${c.entrada}</td>
        <td style="font-size:11px;color:var(--red)">${c.stop}</td>
        <td style="font-size:11px;color:var(--green-700)">${c.t1}</td>
        <td class="strategy-text">${c.estrategia}</td>
      </tr>`;
    });
    html += '</tbody></table></div></div>';
  });
  el.innerHTML = html;
}

// ══════════════════════════════════════════════════════════════
//  RENDER ALL & AUTO-REFRESH
// ══════════════════════════════════════════════════════════════
/* REMOVED renderAll */ function _NOOP_renderAll() {
  renderRanking();
  renderFactor();
  renderMestra();
  renderProjecoes();
  renderAnalise();
  renderDecisorio();
  updateTopUpside();
}

/* REMOVED scheduleRefresh */ function _NOOP_scheduleRefresh() {
  const interval = isMarketOpen() ? 90000 : 300000;
  setTimeout(async () => {
    /* scheduleRefresh handled globally */
  }, interval);
}

// ══════════════════════════════════════════════════════════════
//  INIT
// ══════════════════════════════════════════════════════════════
// renderAll() handled globally
// fetchAllPrices() handled globally

const IMO_COMPANIES = COMPANIES_IMO;
const IMO_SUBSETORES = SUBSETORES_IMO;
</script>

<script>
// ─── EQUIPAMENTOS DATA ───────────────────────────────────

// ══════════════════════════════════════════════════════════════
//  DADOS — EQUIPAMENTOS INDUSTRIAIS B3
// ══════════════════════════════════════════════════════════════
const COMPANIES_EQ = [
  {
    rank: 1, ticker: 'EALT3', name: 'Electro Aço Altona SA',
    segment: 'Fundidos e Usinados em Aço',
    pj: 19.24, pjStr: 'R$19,24',
    roic:'16.3%', roa:'17.0%', roe:'33.3%',
    pl:'4.81x', evEbit:'4.81x', dy:'9.3%', pfco:'3.5x', pbook:'0.86x', divAtivo:'0.29x',
    classifFV:'Barato', classifAnal:'Indisponível',
    score:'24/26', scoreNum:24,
    veredicto:'✅ COMPRA FORTE', momento:'🟢 ANOMALIA DE PREÇO — SMALL CAP',
    precoFV:'Barato +38,3%', estrategia:'Compra gradual · Stop R$11,50 · Alvo R$19,24 (PJ) · Posição 3-5% · Monitorar liquidez',
    // heatmap colors [ROIC,ROA,ROE,PL,EVEBIT,DY,CrescDiv,PBook,PFCO,DivAtivo,UpsidePJ,EVCap,AnosDY]
    hm:[2,2,2,2,2,2,2,2,2,2,2,2,1],
    // projeções
    pess:'R$15,50', real:'R$19,24', otim:'R$24,00',
    retPess:'+11.5%', retReal:'+38.4%', retOtim:'+72.7%',
    tip:'Empresa sem dívida + ROIC 16% + P/FCO 3.5x = enorme desconto. Reavaliação quando small cap ganhar visibilidade.',
    // WACC
    roicVal:'16.3%', waccVal:'11.0%', spread:'+5.3%', criaValor:'✅ SIM', crescRev:'12%', margemEbit:'22%',
    // análise
    pontos_pos:'• ROIC 16,3% e ROA 17,0% — retornos excelentes, acima do WACC\n• ROE 33,3% — um dos mais altos do setor\n• P/L apenas 4,81x — múltiplo mais barato do setor com qualidade real\n• P/Book 0,865x — negociando abaixo do patrimônio líquido (raro + ROIC alto)\n• Upside +38,3% vs preço justo — maior upside do grupo com fundamentos sólidos\n• P/FCO 3,52x — geração de caixa extraordinária\n• Dívida/Ativo 29% — estrutura conservadora',
    pontos_neg:'• Liquidez baixa — empresa de micro cap\n• Sem cobertura de analistas institucionais\n• Crescimento de dívida -13% — pode indicar subinvestimento\n• Setor de fundidos expostos a ciclo industrial',
    fco:'P/FCO=3,52x é o MENOR do setor de ativos saudáveis — empresa gera caixa muito acima do preço. FCO sólido e consistente. Dividendo de 9,4% sustentável.',
    dcf:'Com ROIC=16% e P/L=4,8x em empresa sem dívida líquida relevante, o DCF aponta valor intrínseco entre R$18-22. Preço atual = desconto de 25-35%. Anomalia de preço em small cap de qualidade.',
    estrategiaDetalhe:'Compra gradual · Stop R$11,50 · Alvo 12m: R$19,20 (PJ) · Posição 3-5% · Monitorar liquidez'
  },
  {
    rank: 2, ticker: 'SHUL4', name: 'Schulz SA Pref',
    segment: 'Compressores / Equipamentos Pneumáticos',
    pj: 6.53, pjStr: 'R$6,53',
    roic:'8.2%', roa:'10.1%', roe:'19.8%',
    pl:'6.35x', evEbit:'7.15x', dy:'11.3%', pfco:'6.8x', pbook:'1.23x', divAtivo:'0.68x',
    classifFV:'Barato', classifAnal:'Indisponível',
    score:'20/26', scoreNum:20,
    veredicto:'✅ COMPRA', momento:'🟢 DIVIDEND COMPOUNDER',
    precoFV:'Barato +26,8%', estrategia:'Compra para renda · Stop R$4,30 · Alvo R$6,53 (PJ) · Posição 2-3% · Foco em DY',
    hm:[1,2,1,2,2,2,1,1,2,1,2,2,2],
    pess:'R$5,20', real:'R$6,53', otim:'R$7,80',
    retPess:'+1.0%', retReal:'+26.8%', retOtim:'+51.5%',
    tip:'9 anos de dividend growth = confiabilidade. Compressor nicho defensivo. Crescimento 6-8% DPA.',
    roicVal:'8.2%', waccVal:'11.0%', spread:'-2.8%', criaValor:'❌ NÃO', crescRev:'8%', margemEbit:'14%',
    pontos_pos:'• 9 anos consecutivos de crescimento de dividendos — MAIOR streak do setor\n• DY 11,3% + histórico de 9 anos = renda consistente e crescente\n• P/L 6,35x — múltiplo barato para empresa lucrativa\n• P/FCO 6,8x — geração de caixa sólida\n• EV/EBIT 7,15x — valuation razoável\n• EV/Capital 0,697x — negociando abaixo do capital investido',
    pontos_neg:'• ROIC 8,2% — limítrofe ao WACC\n• Dívida/Cap.Total 34,9% combinada com crescimento de dívida +35%\n• Empresa de nicho (compressores) — mercado limitado e cíclico\n• Sem cobertura de analistas disponível',
    fco:'P/FCO=6,8x excelente. FCO positivo e recorrente. 9 anos de dividendo crescente provam disciplina de capital.',
    dcf:'Com P/L=6,35x e 9 anos de dividend growth, SHUL4 é candidata a "dividend compounder". DCF por Gordon: crescimento de 8-10% em DPA = preço justo R$6-7 vs R$5,15 atual.',
    estrategiaDetalhe:'Compra para renda · Stop R$4,30 · Alvo 12m: R$6,53 (PJ) · Posição 2-3% · Foco em dividend compounding'
  },
  {
    rank: 3, ticker: 'KEPL3', name: 'Kepler Weber SA',
    segment: 'Armazenagem / Equipamentos Agrícolas',
    pj: 10.08, pjStr: 'R$10,08',
    roic:'13.9%', roa:'10.1%', roe:'20.6%',
    pl:'9.10x', evEbit:'7.24x', dy:'10.2%', pfco:'11.8x', pbook:'1.84x', divAtivo:'0.43x',
    classifFV:'Barato', classifAnal:'Justo',
    score:'18/26', scoreNum:18,
    veredicto:'✅ COMPRA', momento:'🟢 OPORTUNIDADE — AGRO',
    precoFV:'Barato +22,9%', estrategia:'Compra em dips · Stop R$6,80 · Alvo R$10,08 (PJ) · Posição 3-4% · Tese agro secular',
    hm:[2,2,2,2,2,2,2,1,1,1,2,1,0],
    pess:'R$8,50', real:'R$10,08', otim:'R$12,50',
    retPess:'+3.7%', retReal:'+22.9%', retOtim:'+52.4%',
    tip:'Agronegócio como driver secular. Capacidade de armazenagem déficit no Brasil. Crescimento 10-12%.',
    roicVal:'13.9%', waccVal:'11.0%', spread:'+2.9%', criaValor:'✅ SIM', crescRev:'11%', margemEbit:'18%',
    pontos_pos:'• ROIC 13,9% — acima do WACC; cria valor real\n• ROA 10,1% e ROE 20,6% — retornos consistentes\n• Upside +23% vs preço justo — desconto atraente\n• DY 10,2% — yield relevante\n• EV/EBIT 7,2x e P/L 9,1x — valuation atraente\n• Beneficiário do agronegócio brasileiro\n• Dívida/Cap.Total 19% — balanço saudável',
    pontos_neg:'• P/Book 1,84x — não é barato em valor patrimonial\n• P/FCO 11,8x — aceitável mas não excepcional\n• Sem streak de dividendos crescentes\n• Exposição a ciclo agrícola',
    fco:'P/FCO=11,8x é moderado. FCO positivo e real. Dividendo de 10,2% sustentado.',
    dcf:'ROIC=13,9% vs WACC~11% = spread positivo. DCF aponta R$9,5-11,5. Upside de +23% vs PJ é atraente.',
    estrategiaDetalhe:'Compra gradual · Stop R$6,80 · Alvo 12m: R$10,08 (PJ) · Posição 3-4% · Tese agro secular'
  },
  {
    rank: 4, ticker: 'INTB3', name: 'Intelbras SA',
    segment: 'Equipamentos Telecom / Segurança / Energia',
    pj: 19.22, pjStr: 'R$19,22',
    roic:'8.8%', roa:'8.9%', roe:'16.2%',
    pl:'9.36x', evEbit:'10.25x', dy:'10.2%', pfco:'4.9x', pbook:'1.51x', divAtivo:'0.30x',
    classifFV:'Barato', classifAnal:'Justo',
    score:'17/26', scoreNum:17,
    veredicto:'🟡 COMPRA/NEUTRO', momento:'🟡 OPORTUNIDADE MODERADA',
    precoFV:'Barato +39,3%', estrategia:'Compra gradual · Stop R$11,50 · Alvo R$19,22 (PJ) · Posição 2-3% · Monit. crescimento',
    hm:[1,1,1,2,1,2,2,1,2,1,2,1,1],
    pess:'R$16,00', real:'R$19,22', otim:'R$22,00',
    retPess:'+15.9%', retReal:'+39.3%', retOtim:'+59.4%',
    tip:'Crescimento solar e automação. Segurança eletrônica em expansão. PJ pode ser atingido em 12-18m.',
    roicVal:'8.8%', waccVal:'11.0%', spread:'-2.2%', criaValor:'❌ NÃO', crescRev:'13%', margemEbit:'20%',
    pontos_pos:'• ROIC 8,8% e ROA 8,9% — retornos razoáveis\n• DY 10,2% — yield atraente\n• Upside +39,3% vs preço justo — maior upside do grupo\n• P/FCO 4,9x — geração de caixa real e sólida\n• Dívida/Ativo 30% — estrutura conservadora\n• Cresc. dívida -5,6% — reduzindo alavancagem',
    pontos_neg:'• ROIC 8,8% — abaixo da média setorial\n• ROE 16,2% — aceitável mas não excepcional\n• EV/EBIT 10,25x — múltiplo mediano\n• Analistas classificam como "Justo"',
    fco:'P/FCO=4,9x é excelente. FCO positivo e real. Dividendo de 10,2% sustentável.',
    dcf:'Com ROIC próximo ao WACC, o DCF não fecha para valorização expressiva sem aceleração de crescimento.',
    estrategiaDetalhe:'Compra gradual · Stop R$11,50 · Alvo 12m: R$17-19 · Posição 2-3% · Monitorar crescimento solar/automação'
  },
  {
    rank: 5, ticker: 'MILS3', name: 'Mills Estruturas SA',
    segment: 'Locação de Equipamentos / Serviços de Engenharia',
    pj: 17.86, pjStr: 'R$17,86',
    roic:'13.2%', roa:'7.5%', roe:'19.9%',
    pl:'10.11x', evEbit:'6.96x', dy:'8.0%', pfco:'-44.8x⚠', pbook:'1.94x', divAtivo:'1.19x',
    classifFV:'Barato', classifAnal:'Barato',
    score:'15/26', scoreNum:15,
    veredicto:'✅ COMPRA / WATCHLIST', momento:'🟢 COMPRA COM ATENÇÃO AO FCO',
    precoFV:'Barato +33,9%', estrategia:'Compra parcial · Stop R$11,00 · Alvo R$17,86 (PJ) · Posição 3-4% · Aguardar FCO+',
    hm:[2,1,1,1,2,1,1,1,0,0,2,1,2],
    pess:'R$14,50', real:'R$17,86', otim:'R$21,00',
    retPess:'+8.8%', retReal:'+34.0%', retOtim:'+57.5%',
    tip:'FCO negativo em expansão — risco curto prazo. Se normalizar, ROIC 13% justifica alvo R$18+.',
    roicVal:'13.2%', waccVal:'12.0%', spread:'+1.2%', criaValor:'✅ SIM', crescRev:'12%', margemEbit:'40%',
    pontos_pos:'• ROIC 13,2% — acima do WACC\n• ROE 19,9% — forte\n• Upside +33,9% vs preço justo\n• 5 anos consecutivos de crescimento de dividendos\n• Empresa de locação — modelo recorrente\n• Classificação "Barato" por analistas',
    pontos_neg:'• P/FCO -44,8x⚠ — FCO negativo é o principal risco\n• Dívida/Ativo 1,19x — alavancagem elevada\n• Modelo de locação exige capex intensivo',
    fco:'FCO negativo (-44,8x P/FCO) é o principal ponto de atenção. ROIC=13% > WACC=11% indica que o capex está gerando valor, mas o timing de caixa é defasado.',
    dcf:'Com ROIC=13% e upside de +34%, MILS3 oferece valor se o FCO normalizar. DCF: preço justo R$17-19 vs R$13,33 atual.',
    estrategiaDetalhe:'Compra parcial · Stop R$11,00 · Alvo 12m: R$17,86 (PJ) · Posição 3-4% · Aguardar confirmação FCO positivo'
  },
  {
    rank: 6, ticker: 'ROMI3', name: 'Indústrias Romi SA',
    segment: 'Máquinas e Ferramentas',
    pj: 8.60, pjStr: 'R$8,60',
    roic:'3.1%', roa:'3.2%', roe:'7.0%',
    pl:'7.74x', evEbit:'15.82x', dy:'8.7%', pfco:'3.7x', pbook:'0.53x', divAtivo:'0.82x',
    classifFV:'Barato', classifAnal:'Indisponível',
    score:'13/26', scoreNum:13,
    veredicto:'🟡 AGUARDAR', momento:'🔴 ROIC MUITO BAIXO — VALUE TRAP?',
    precoFV:'Barato +22,3%', estrategia:'Watchlist · Aguardar ROIC > 8% · P/Book barato mas fundamentals fracos',
    hm:[0,0,0,2,0,1,1,2,2,1,2,2,0],
    pess:'R$6,50', real:'R$8,60', otim:'R$11,00',
    retPess:'-7.5%', retReal:'+22.3%', retOtim:'+56.5%',
    tip:'Value trap ou turnaround. Depende de recuperação de ciclo de máquinas-ferramenta.',
    roicVal:'3.1%', waccVal:'11.0%', spread:'-7.9%', criaValor:'❌ NÃO', crescRev:'5%', margemEbit:'8%',
    pontos_pos:'• P/Book 0,53x — desconto profundo ao patrimônio\n• P/FCO 3,7x — geração de caixa barata\n• P/Vendas 0,50x — valuation de receita muito barato\n• EV/Capital 0,54x — empresa vale menos que o capital investido\n• Upside +22,3% vs PJ',
    pontos_neg:'• ROIC 3,1% — destrói valor vs WACC de 11%\n• ROE 7,0% — muito abaixo do custo de capital\n• EV/EBIT 15,82x — caro considerando a qualidade\n• Sem cobertura de analistas',
    fco:'P/FCO=3,7x é barato, mas ROIC destrutivo indica que não há criação de valor real.',
    dcf:'Com ROIC=3% vs WACC=11%, o DCF indica destruição de valor. O P/Book barato pode ser armadilha de valor.',
    estrategiaDetalhe:'Watchlist · Aguardar ROIC > 8% · P/Book barato mas fundamentals fracos · Não entrar'
  },
  {
    rank: 7, ticker: 'WEGE3', name: 'WEG SA',
    segment: 'Motores / Automação Industrial',
    pj: 48.80, pjStr: 'R$48,80',
    roic:'26.0%', roa:'16.1%', roe:'32.5%',
    pl:'31.17x', evEbit:'24.84x', dy:'4.4%', pfco:'30.8x', pbook:'11.41x', divAtivo:'0.31x',
    classifFV:'Justo', classifAnal:'Justo',
    score:'11/26', scoreNum:11,
    veredicto:'🟡 HOLD/COMPRA LONGO PRAZO', momento:'🟡 PREÇO JUSTO — PREMIUM MERECIDO',
    precoFV:'Justo +2,9%', estrategia:'Compra abaixo de R$42 · Stop R$38 · Alvo R$56 (18m) · Posição estrutural 5-8%',
    hm:[2,2,2,0,0,0,1,0,0,1,1,0,2],
    pess:'R$39,00', real:'R$48,80', otim:'R$58,50',
    retPess:'-17.7%', retReal:'+2.9%', retOtim:'+23.4%',
    tip:'Crescimento 14% a.a. CAGR receita. Margem EBIT estável ~30%. Expansão internacional acelerando.',
    roicVal:'26.0%', waccVal:'11.0%', spread:'+14.9%', criaValor:'✅ SIM', crescRev:'14%', margemEbit:'28%',
    pontos_pos:'• ROIC 26% — melhor do setor, criação de valor excepcional\n• ROA 16,1% e ROE 32,5% — rentabilidade premium\n• Dívida/Cap.Total apenas 2,6% — praticamente sem dívida\n• 8 anos consecutivos de crescimento de dividendos\n• Expansão internacional acelerada',
    pontos_neg:'• P/L 31x e EV/EBIT 24,8x — múltiplos exigentes\n• P/FCO 30,8x — caro em termos de caixa\n• Upside apenas +2,9% vs PJ — sem margem de segurança',
    fco:'P/FCO=30,8x é caro. Porém, WEGE gera FCO crescente e consistente. Valuation premium é justificado pela qualidade.',
    dcf:'Com ROIC=26% e crescimento de 14% a.a., WEG justifica múltiplos premium. Porém, preço atual já embute cenário otimista.',
    estrategiaDetalhe:'Compra abaixo de R$42 · Stop R$38 · Alvo R$56 (18m) · Posição estrutural 5-8%'
  },
  {
    rank: 8, ticker: 'FRAS3', name: 'Fras-le SA',
    segment: 'Autopeças / Freios e Fricção',
    pj: 27.60, pjStr: 'R$27,60',
    roic:'17.7%', roa:'4.7%', roe:'12.0%',
    pl:'21.44x', evEbit:'8.02x', dy:'2.8%', pfco:'3.9x', pbook:'2.41x', divAtivo:'1.15x',
    classifFV:'Barato', classifAnal:'Barato',
    score:'9/26', scoreNum:9,
    veredicto:'✅ COMPRA', momento:'🟢 OPORTUNIDADE DE COMPRA',
    precoFV:'Barato +29,6%', estrategia:'Compra gradual · Stop R$18,00 · Alvo R$27,60 (PJ) · Posição 3-5% · Monitor. alavancagem',
    hm:[2,0,1,0,2,0,1,0,2,0,2,1,2],
    pess:'R$22,00', real:'R$27,60', otim:'R$33,00',
    retPess:'+3.3%', retReal:'+29.6%', retOtim:'+54.9%',
    tip:'Liderança em freios. Expansão internacional. Crescimento 8-10% a.a. Normalização de margem.',
    roicVal:'17.7%', waccVal:'11.5%', spread:'+6.2%', criaValor:'✅ SIM', crescRev:'9%', margemEbit:'15%',
    pontos_pos:'• ROIC 17,7% — forte criação de valor\n• P/FCO 3,9x — geração de caixa excelente\n• 5 anos de dividendo crescente\n• Liderança de mercado em freios e fricção\n• Upside +29,6% vs PJ\n• Classificação "Barato" por analistas',
    pontos_neg:'• P/L 21,44x — múltiplo elevado\n• ROA 4,7% — baixo considerando o ROIC\n• Dívida cresceu +174,9% YoY — risco de alavancagem\n• P/Book 2,41x — acima de 2x',
    fco:'P/FCO=3,9x é excelente. FCO positivo e crescente. Dividendo de 2,8% com 5 anos de streak.',
    dcf:'ROIC=17,7% vs WACC=11,5% = spread de +6,2%. DCF aponta R$25-30. Upside de +29,6% vs PJ atraente.',
    estrategiaDetalhe:'Compra gradual · Stop R$18,00 · Alvo 12m: R$27,60 (PJ) · Posição 3-5% · Monitor. alavancagem'
  },
  {
    rank: 9, ticker: 'MTSA3', name: 'Metisa Metalúrgica SA',
    segment: 'Ferramentas e Implementos Agrícolas',
    pj: 73.48, pjStr: 'R$73,48',
    roic:'4.5%', roa:'7.0%', roe:'8.9%',
    pl:'14.56x', evEbit:'13.68x', dy:'5.8%', pfco:'9.2x', pbook:'1.30x', divAtivo:'N/D',
    classifFV:'Justo', classifAnal:'Indisponível',
    score:'8/26', scoreNum:8,
    veredicto:'🟡 NEUTRO/HOLD', momento:'🟡 NO PREÇO JUSTO — SEM CATALISADOR',
    precoFV:'Justo +2,5%', estrategia:'Não entrar · Aguardar ROIC > 10% · Hold apenas para quem já tem',
    hm:[0,1,0,1,0,1,1,1,1,0,1,1,1],
    pess:'R$62,00', real:'R$73,48', otim:'R$82,00',
    retPess:'-17.8%', retReal:'-2.5%', retOtim:'+8.8%',
    tip:'No preço justo. Sem catalisador de melhora de ROIC. Upside limitado. Hold neutro.',
    roicVal:'4.5%', waccVal:'10.5%', spread:'-6.0%', criaValor:'❌ NÃO', crescRev:'6%', margemEbit:'12%',
    pontos_pos:'• ROA 7,0% — moderado\n• P/FCO 9,2x — razoável\n• DY 5,8%\n• P/Book 1,30x — razoável',
    pontos_neg:'• ROIC 4,5% — destrói valor\n• ROE 8,9% — abaixo do custo de capital\n• EV/EBIT 13,68x — caro para a qualidade\n• Upside -2,5% vs PJ — no preço justo ou ligeiramente acima',
    fco:'P/FCO=9,2x é razoável. FCO positivo. Dividendo de 5,8% sustentado.',
    dcf:'Com ROIC=4,5% vs WACC=10,5%, o DCF não apoia valorização. Empresa no preço justo sem catalisador.',
    estrategiaDetalhe:'Não entrar · Aguardar ROIC > 10% · Hold apenas para quem já tem · Alvo sem convicção'
  },
  {
    rank: 10, ticker: 'FRIO3', name: 'Metalfrio Solutions SA',
    segment: 'Refrigeração Comercial',
    pj: 139.92, pjStr: 'R$139,92',
    roic:'7.3%', roa:'1.1%', roe:'4.9%',
    pl:'28.87x', evEbit:'9.20x', dy:'—', pfco:'6.6x', pbook:'2.81x', divAtivo:'2.18x',
    classifFV:'Justo', classifAnal:'Indisponível',
    score:'6/26', scoreNum:6,
    veredicto:'🔴 AGUARDAR/VENDER', momento:'🔴 ATIVO CARO — EVITAR',
    precoFV:'Caro -17,8%', estrategia:'Não entrar · Reduzir se tiver · Aguardar correção > 20%',
    hm:[1,0,0,0,1,0,1,0,2,0,0,1,0],
    pess:'R$120,00', real:'R$139,92', otim:'R$155,00',
    retPess:'-29.5%', retReal:'-17.8%', retOtim:'-8.9%',
    tip:'Ativo CARO atualmente. Sem dividendo. Apenas se corrigir 20%+ se torna interessante.',
    roicVal:'7.3%', waccVal:'12.0%', spread:'-4.7%', criaValor:'❌ NÃO', crescRev:'3%', margemEbit:'12%',
    pontos_pos:'• P/FCO 6,6x — geração de caixa razoável\n• EV/EBIT 9,20x — múltiplo moderado',
    pontos_neg:'• ROA 1,1% — rentabilidade de ativo pífia\n• Sem dividendo\n• P/Book 2,81x — caro\n• Dívida/Ativo 2,18x — alavancagem perigosa\n• Upside -17,8% vs PJ — ativo CARO',
    fco:'P/FCO=6,6x é ok, mas ROA=1,1% indica que os ativos não estão sendo bem utilizados.',
    dcf:'Com ROA=1,1% e sem dividendo, o DCF não apoia o preço atual. Ativo está 18% acima do preço justo.',
    estrategiaDetalhe:'Não entrar · Reduzir se tiver · Aguardar correção > 20% · Stop para holder: R$150'
  },
  {
    rank: 11, ticker: 'BDLL3', name: 'Bardella SA Ind. Mecânicas',
    segment: 'Equipamentos Industriais Pesados',
    pj: 7.79, pjStr: 'R$7,79',
    roic:'NM', roa:'2.3%', roe:'92.3%',
    pl:'19.75x', evEbit:'N/D', dy:'—', pfco:'21.4x', pbook:'NM', divAtivo:'N/D',
    classifFV:'Justo', classifAnal:'Indisponível',
    score:'6/26', scoreNum:6,
    veredicto:'🔴 EVITAR', momento:'🔴 DADOS INSUFICIENTES',
    precoFV:'Justo +11,1%', estrategia:'Evitar · Liquidez mínima · Sem dados confiáveis',
    hm:[0,0,2,0,0,0,1,0,0,0,1,0,0],
    pess:'R$6,00', real:'R$7,79', otim:'R$9,50',
    retPess:'-14.4%', retReal:'+11.1%', retOtim:'+35.5%',
    tip:'Dados insuficientes. Liquidez mínima. Especulativo.',
    roicVal:'NM', waccVal:'11.5%', spread:'N/D', criaValor:'N/D', crescRev:'N/D', margemEbit:'N/D',
    pontos_pos:'• ROE 92,3% — distorcido por PL negativo\n• Upside +11,1% vs PJ',
    pontos_neg:'• ROIC NM — dados insuficientes\n• Liquidez mínima\n• Sem cobertura de analistas\n• PL negativo distorce métricas',
    fco:'P/FCO=21,4x — dados insuficientes para análise confiável.',
    dcf:'Dados insuficientes. Não é possível construir DCF confiável. Especulativo.',
    estrategiaDetalhe:'Evitar · Liquidez mínima · Sem dados confiáveis · Não investir'
  },
  {
    rank: 12, ticker: 'AERI3', name: 'Aeris Ind. Equip.',
    segment: 'Pás Eólicas (Energia Renovável)',
    pj: 2.76, pjStr: 'R$2,76',
    roic:'NM', roa:'-45.0%', roe:'NM',
    pl:'NM', evEbit:'N/D', dy:'—', pfco:'-0.2x⚠', pbook:'-0.18x', divAtivo:'N/D',
    classifFV:'Justo', classifAnal:'Pechincha',
    score:'4/26', scoreNum:4,
    veredicto:'⚠️ ESPECULATIVO', momento:'⚠️ ALTO RISCO — RECUPERAÇÃO INCERTA',
    precoFV:'Justo +10,2%', estrategia:'Especulativo 1% máx · Apenas convictos em recuperação eólica · Stop R$1,80',
    hm:[0,0,0,0,0,0,1,0,0,0,1,0,0],
    pess:'R$1,80', real:'R$2,76', otim:'R$4,50',
    retPess:'-28.0%', retReal:'+10.4%', retOtim:'+80.0%',
    tip:'Especulativo. Mercado eólico crescendo mas empresa operacionalmente frágil.',
    roicVal:'NM', waccVal:'13.0%', spread:'N/D', criaValor:'N/D', crescRev:'N/D', margemEbit:'N/D',
    pontos_pos:'• Analistas classificam como "Pechincha"\n• Mercado eólico em expansão no Brasil\n• Upside +10,2% vs PJ',
    pontos_neg:'• ROA -45% — empresa destruindo valor\n• PL negativo\n• FCO negativo\n• P/Book negativo — insolvência patrimonial\n• Risco alto de diluição ou falência',
    fco:'FCO negativo. Empresa queima caixa operacionalmente. Alto risco de insolvência.',
    dcf:'Sem condições de construir DCF. Empresa pré-viabilidade. Apenas para investidores de risco muito alto.',
    estrategiaDetalhe:'Especulativo 1% máx · Apenas convictos em recuperação eólica · Stop R$1,80'
  },
  {
    rank: 13, ticker: 'INEP3', name: 'Inepar SA Ind. e Construções',
    segment: 'Equipamentos Elétricos / Em dificuldades',
    pj: 1.11, pjStr: 'R$1,11',
    roic:'NM', roa:'-63.4%', roe:'NM',
    pl:'NM', evEbit:'N/D', dy:'—', pfco:'-0.3x⚠', pbook:'-0.04x', divAtivo:'N/D',
    classifFV:'Caro', classifAnal:'Indisponível',
    score:'3/26', scoreNum:3,
    veredicto:'🔴 EVITAR COMPLETAMENTE', momento:'🔴 EMPRESA DISTRESSED — CARO',
    precoFV:'Caro -20,6%', estrategia:'EVITAR · Preço acima do justo · Risco de insolvência real',
    hm:[0,0,0,0,0,0,1,0,0,0,0,0,0],
    pess:'R$0,60', real:'R$1,11', otim:'R$1,80',
    retPess:'-57.1%', retReal:'-20.7%', retOtim:'+28.6%',
    tip:'Empresa distressed. Caro vs PJ. EVITAR.',
    roicVal:'NM', waccVal:'13.5%', spread:'N/D', criaValor:'N/D', crescRev:'N/D', margemEbit:'N/D',
    pontos_pos:'• Nenhum ponto positivo relevante',
    pontos_neg:'• ROA -63,4% — destruição massiva de valor\n• PL negativo — insolvência patrimonial\n• FCO negativo\n• Preço -20,6% abaixo do PJ — CARO\n• Risco real de falência',
    fco:'FCO negativo. Empresa em dificuldades financeiras graves.',
    dcf:'Empresa distressed. Preço acima do valor justo. Risco de insolvência real. Não investir.',
    estrategiaDetalhe:'EVITAR · Preço acima do justo · Risco de insolvência real · Não investir jamais'
  }
];

const SUBSETORES_EQ = [
  { nome:'⚙️ Componentes Industriais', tickers:['EALT3','SHUL4','ROMI3','INTB3'] },
  { nome:'🌾 Agronegócio & Implementos', tickers:['KEPL3','MTSA3'] },
  { nome:'🏭 Automação & Serviços', tickers:['WEGE3','MILS3','FRIO3','AERI3'] },
  { nome:'🚗 Autopeças & Elétricos', tickers:['FRAS3','BDLL3','INEP3'] }
];

// ══════════════════════════════════════════════════════════════
//  NORMALIZAÇÃO DOS CAMPOS EQUIPAMENTOS → TEMPLATE PADRÃO
// ══════════════════════════════════════════════════════════════
COMPANIES_EQ.forEach(c => {
  // Normalizar nomes de campos
  c.nome      = c.nome      || c.name    || c.ticker;
  c.subsetor  = c.subsetor  || c.segment || 'Equipamentos';
  c.icon      = c.icon      || '⚙️';
  c.pjBase    = c.pjBase    || c.pj      || 0;
  c.classifBase = c.classifBase || c.classifFV || 'Justo';

  // Derivar precoBase: PJ / (1 + retReal%) quando disponível
  if (!c.precoBase || c.precoBase === 0) {
    if (c.retReal) {
      const pct = parseFloat(c.retReal.replace('%','').replace(',','.')) / 100;
      if (!isNaN(pct) && pct > -0.99) {
        c.precoBase = c.pjBase / (1 + pct);
      }
    }
    if (!c.precoBase || c.precoBase === 0) {
      // Fallback: usar pess como ~80% do PJ → precoBase ≈ pess/0.8 * retPess_factor
      const pessStr = (c.pess||'').replace('R$','').replace(',','.');
      const pessVal = parseFloat(pessStr);
      if (!isNaN(pessVal) && pessVal > 0) {
        // pess = precoBase * (1 + retPess/100)
        const retPessStr = (c.retPess||'+0').replace('%','').replace(',','.');
        const retPessVal = parseFloat(retPessStr) / 100;
        if (!isNaN(retPessVal)) {
          c.precoBase = pessVal / (1 + retPessVal);
        }
      }
    }
    if (!c.precoBase || c.precoBase === 0) c.precoBase = c.pjBase * 0.80;
  }

  // Alvo analistas
  c.alvoAnal = c.alvoAnal || (c.pjBase ? 'R$' + c.pjBase.toFixed(2).replace('.',',') : 'N/D');

  // Estratégia
  c.estrategiaDetalhe = c.estrategiaDetalhe || c.estrategia || 'Consultar análise';
  c.estrategia = c.estrategia || c.estrategiaDetalhe;

  // Momento
  c.momento = c.momento || (c.scoreNum >= 20 ? '🟢 OPORTUNIDADE DE COMPRA' : c.scoreNum >= 16 ? '🟡 MONITORAR' : '🔴 NÃO RECOMENDADO');

  // Análise — já presente no EQUIPAMENTOS
  c.pontos_pos = c.pontos_pos || '• Dados de análise em elaboração';
  c.pontos_neg = c.pontos_neg || '• Dados de análise em elaboração';
  c.fco        = c.fco        || 'Dados de fluxo de caixa em elaboração.';
  c.dcf        = c.dcf        || 'P/L: ' + (c.pl||'N/D') + ' · EV/EBIT: ' + (c.evEbit||'N/D') + '. PJ: ' + fmtPrice(c.pjBase);
  c.tip        = c.tip        || (c.nome + ' — ' + c.classifBase + ' vs PJ. ' + c.score + ' pontos Factor Invest.');

  // Cenários — normalizar formato (vírgula → ponto para cálculos)
  c.pessNum = c.pessNum || parseFloat((c.pess||'').replace('R$','').replace(',','.')) || c.pjBase * 0.8;
  c.otimNum = c.otimNum || parseFloat((c.otim||'').replace('R$','').replace(',','.')) || c.pjBase * 1.2;
});


// FACTOR_CRITERIA global

// livePrices global
// lastFetchTime global
// marketOpen global

/* REMOVED isMarketOpen */

async function _NOOP_fetchAllPrices() {
  const btn = document.getElementById('updateBtn');
  const statusEl = document.getElementById('priceStatus');
  const marketEl = document.getElementById('marketStatus');
  btn.classList.add('loading');
  document.getElementById('updateBtnText').textContent = 'Buscando...';
  const tickers = COMPANIES_EQ.map(c => c.ticker);
  marketOpen = isMarketOpen();
  marketEl.textContent = marketOpen ? '🟢 Mercado Aberto (B3)' : '🔴 Mercado Fechado — Último Fechamento';
  try {
    const url = `https://brapi.dev/api/quote/${tickers.join(',')}?range=1d&interval=1d&fundamental=false&dividends=false`;
    const res = await fetch(url, { signal: AbortSignal.timeout(8000) });
    if (!res.ok) throw new Error('brapi');
    const data = await res.json();
    if (data.results) data.results.forEach(r => { if (r.regularMarketPrice) livePrices[r.symbol] = r.regularMarketPrice; });
    lastFetchTime = new Date();
    statusEl.textContent = `${marketOpen ? '🟢 Ao vivo' : '🔴 Fechamento'} · ${lastFetchTime.toLocaleTimeString('pt-BR')}`;
    statusEl.className = 'price-status live';
  } catch(e1) {
    try {
      for (const ticker of tickers) {
        try {
          const proxy = `https://corsproxy.io/?${encodeURIComponent('https://query1.finance.yahoo.com/v8/finance/chart/' + ticker + '.SA?interval=1d&range=1d')}`;
          const r2 = await fetch(proxy, { signal: AbortSignal.timeout(5000) });
          const d2 = await r2.json();
          const p = d2?.chart?.result?.[0]?.meta?.regularMarketPrice;
          if (p) livePrices[ticker] = p;
        } catch {}
      }
      lastFetchTime = new Date();
      statusEl.textContent = `Via Yahoo · ${lastFetchTime.toLocaleTimeString('pt-BR')}`;
      statusEl.className = 'price-status live';
    } catch { statusEl.textContent = 'Cotação indisponível — usando dados base'; }
  }
  btn.classList.remove('loading');
  document.getElementById('updateBtnText').textContent = '⟳ Atualizar Cotações';
  // renderAll() handled globally
  updateTopUpside();
}

/* REMOVED getPrice */
/* REMOVED getUpside */
/* REMOVED fmtPrice */
/* REMOVED fmtPct */
/* REMOVED upsideClass */
/* REMOVED badgeClass */
/* REMOVED classifHTML */
/* REMOVED scoreColor */
/* REMOVED scoreEmoji */
/* REMOVED updateTopUpside */ function _NOOP_updateTopUpside() {
  const top2 = COMPANIES_EQ.map(c=>({ticker:c.ticker,upside:getUpside(c.ticker)})).sort((a,b)=>b.upside-a.upside).slice(0,2);
  document.getElementById('topUpsideBar').textContent = top2.map(x=>x.ticker+' '+fmtPct(x.upside)).join(' · ');
}
/* REMOVED showTab */ function _NOOP_showTab() {
  document.querySelectorAll('.section').forEach(s=>s.classList.remove('active'));
  document.querySelectorAll('.tab-btn').forEach(b=>b.classList.remove('active'));
  document.getElementById('tab-'+id).classList.add('active');
  btn.classList.add('active');
}

/* REMOVED renderRanking */ function _NOOP_renderRanking() {
  const tbody = document.getElementById('rankingTbody');
  let html = '';
  SUBSETORES_EQ.forEach(sub => {
    const comps = sub.tickers.map(t=>COMPANIES_EQ.find(c=>c.ticker===t)).filter(Boolean);
    html += `<tr class="subsetor-header"><td colspan="18">${sub.nome}</td></tr>`;
    comps.forEach(c => {
      const price = getPrice(c.ticker), upside = getUpside(c.ticker), sc = c.scoreNum;
      const barW = Math.round(sc/26*100);
      const barColor = sc>=20?'#166534':sc>=16?'#16A34A':sc>=12?'#D97706':'#DC2626';
      html += `<tr>
        <td class="rank-num">${c.rank}</td>
        <td><span class="ticker-chip">${c.ticker}</span></td>
        <td style="font-weight:500;min-width:150px">${c.nome}</td>
        <td style="font-size:11px;color:var(--slate);max-width:160px;white-space:normal">${c.icon} ${c.subsetor}</td>
        <td class="val-live" id="price-${c.ticker}">${fmtPrice(price)}</td>
        <td class="val-price">${fmtPrice(c.pjBase)}</td>
        <td>${classifHTML(c)}</td>
        <td><span class="${upsideClass(upside)}" id="upside-${c.ticker}">${fmtPct(upside)}</span></td>
        <td class="val-mono">${c.roic||'N/D'}</td>
        <td class="val-mono">${c.roa||'N/D'}</td>
        <td class="val-mono">${c.roe||'N/D'}</td>
        <td class="val-mono">${c.pl||'N/D'}</td>
        <td class="val-mono">${c.evEbit||'N/D'}</td>
        <td class="val-mono">${c.dy||'N/D'}</td>
        <td class="val-mono">${c.divAtivo||'N/D'}</td>
        <td class="val-mono">N/D</td>
        <td><span class="${badgeClass(c.veredicto)}">${c.veredicto||'N/D'}</span></td>
        <td><div class="score-display"><div class="score-bar-wrap"><div class="score-bar" style="width:${barW}%;background:${barColor}"></div></div><span class="score-text" style="color:${barColor}">${c.score}</span></div></td>
      </tr>`;
    });
  });
  tbody.innerHTML = html;
}

/* REMOVED renderFactor */ function _NOOP_renderFactor() {
  const el = document.getElementById('factorContent');
  let html = '';
  SUBSETORES_EQ.forEach(sub => {
    const comps = sub.tickers.map(t=>COMPANIES_EQ.find(c=>c.ticker===t)).filter(Boolean);
    html += `<div class="heatmap-wrap"><div class="heatmap-header">${sub.nome}</div><div style="overflow-x:auto"><table class="heatmap-table"><thead><tr><th style="text-align:left">INDICADOR / FATOR</th>`;
    comps.forEach(c => { html += `<th>#${c.rank}<br><span style="font-family:JetBrains Mono,monospace;font-size:11px">${c.ticker}</span><br>${c.score}</th>`; });
    html += '</tr></thead><tbody>';
    FACTOR_CRITERIA.forEach((crit,fi) => {
      html += `<tr><td>${crit}</td>`;
      comps.forEach(c => { const s=c.hm[fi]??0; html+=`<td class="${scoreColor(s)}">${scoreEmoji(s)}<br>${s}</td>`; });
      html += '</tr>';
    });
    html += '<tr><td>▶ PONTUAÇÃO TOTAL (0–26)</td>';
    comps.forEach(c=>{html+=`<td>${c.score}</td>`;});
    html += '</tr></tbody></table></div></div>';
  });
  el.innerHTML = html;
}

/* REMOVED renderMestra */ function _NOOP_renderMestra() {
  const thead = document.getElementById('mestraThead');
  const tbody = document.getElementById('mestraTbody');
  const comps = COMPANIES_EQ;
  let hh = '<tr><th class="sticky-col" style="min-width:200px">INDICADOR</th>';
  comps.forEach(c=>{hh+=`<th>#${c.rank}<br>${c.ticker}</th>`;});
  thead.innerHTML = hh + '</tr>';
  const rows = [
    {label:'  PREÇO & CLASSIFICAÇÃO',group:true},
    {label:'Preço Atual (R$)',fn:c=>`<span class="val-live" id="mestra-price-${c.ticker}">${fmtPrice(getPrice(c.ticker))}</span>`},
    {label:'Preço Justo / Fair Value',fn:c=>`<span class="val-price">${fmtPrice(c.pjBase)}</span>`},
    {label:'Classificação FV',fn:c=>classifHTML(c)},
    {label:'Upside até PJ',fn:c=>`<span class="${upsideClass(getUpside(c.ticker))}" id="mestra-upside-${c.ticker}">${fmtPct(getUpside(c.ticker))}</span>`},
    {label:'Alvo/Referência',fn:c=>`<span class="val-mono">${c.alvoAnal}</span>`},
    {label:'  RENTABILIDADE',group:true},
    {label:'ROIC',fn:c=>c.roic||'N/D'},{label:'ROA',fn:c=>c.roa||'N/D'},{label:'ROE',fn:c=>c.roe||'N/D'},
    {label:'  VALUATION',group:true},
    {label:'P/L',fn:c=>c.pl||'N/D'},{label:'EV/EBIT',fn:c=>c.evEbit||'N/D'},{label:'P/Book',fn:c=>c.pbook||'N/D'},{label:'P/FCO',fn:c=>c.pfco||'N/D'},
    {label:'  DIVIDENDOS',group:true},
    {label:'Dividend Yield',fn:c=>c.dy||'N/D'},
    {label:'  SAÚDE FINANCEIRA',group:true},
    {label:'Dívida/Ativo',fn:c=>c.divAtivo||'N/D'},
    {label:'  FACTOR INVEST',group:true},
    {label:'Pontuação Total',fn:c=>`<strong>${c.score}</strong>`},
    {label:'Veredicto',fn:c=>`<span class="${badgeClass(c.veredicto)}">${c.veredicto||'N/D'}</span>`},
    {label:'Sub-Setor',fn:c=>`${c.icon} ${c.subsetor}`}
  ];
  let tb='';
  rows.forEach(r=>{
    if(r.group){tb+=`<tr class="subsetor-header"><td class="sticky-col" colspan="${comps.length+1}" style="font-size:11px;letter-spacing:0.5px">${r.label}</td></tr>`;}
    else{tb+=`<tr><td class="sticky-col" style="font-weight:500;color:var(--slate);font-size:12px">${r.label}</td>`;comps.forEach(c=>{tb+=`<td style="text-align:center;font-size:12px;font-family:JetBrains Mono,monospace">${r.fn(c)}</td>`;});tb+='</tr>';}
  });
  tbody.innerHTML = tb;
}

/* REMOVED renderProjecoes */ function _NOOP_renderProjecoes() {
  const el = document.getElementById('projContent');
  let html = '';
  SUBSETORES_EQ.forEach(sub => {
    html += `<div style="grid-column:1/-1;background:var(--green-50);border:1px solid var(--green-100);border-left:4px solid var(--green-600);border-radius:0 8px 8px 0;padding:8px 14px;font-weight:700;color:var(--green-800);font-size:14px;">${sub.nome}</div>`;
    const comps = sub.tickers.map(t=>COMPANIES_EQ.find(c=>c.ticker===t)).filter(Boolean);
    comps.forEach(c => {
      const price = getPrice(c.ticker), upside = getUpside(c.ticker);
      const rPess = price ? ((c.pessNum - price)/price*100).toFixed(1) : '0.0';
      const rReal = price ? ((c.pjBase - price)/price*100).toFixed(1) : '0.0';
      const rOtim = price ? ((c.otimNum - price)/price*100).toFixed(1) : '0.0';
      html += `<div class="proj-card">
        <div class="proj-card-header">
          <div><div style="font-weight:700;font-size:14px">${c.nome}</div><div style="font-size:11px;opacity:0.75;margin-top:2px">${c.icon} ${c.subsetor}</div></div>
          <div style="text-align:right"><span style="font-family:JetBrains Mono,monospace;font-size:12px;opacity:0.8">${c.ticker}</span><br><span class="${badgeClass(c.veredicto)}" style="font-size:11px;margin-top:4px">${c.veredicto}</span></div>
        </div>
        <div class="proj-card-body">
          <div class="proj-row"><span class="proj-label">Preço Atual (ao vivo)</span><span class="proj-val val-live" id="proj-price-${c.ticker}">${fmtPrice(price)}</span></div>
          <div class="proj-row"><span class="proj-label">Preço Justo (PJ)</span><span class="proj-val">${fmtPrice(c.pjBase)}</span></div>
          <div class="proj-row"><span class="proj-label">Upside vs PJ</span><span class="proj-val ${upsideClass(upside)}" id="proj-upside-${c.ticker}">${fmtPct(upside)}</span></div>
          <div class="proj-row"><span class="proj-label">Referência / Alvo</span><span class="proj-val">${c.alvoAnal}</span></div>
          <div class="proj-row"><span class="proj-label">Pontuação Factor</span><span class="proj-val">${c.score}</span></div>
          <p style="font-size:11px;color:var(--slate);margin:8px 0 4px;line-height:1.4">⚡ ${c.tip}</p>
          <div class="proj-scenarios">
            <div class="scenario-box scen-pess"><div class="sc-name">Pessimista</div><div class="sc-alvo">${c.pess||fmtPrice(c.pessNum)}</div><div class="sc-ret" id="proj-pess-${c.ticker}">${rPess>=0?'+':''}${rPess}%</div></div>
            <div class="scenario-box scen-real"><div class="sc-name">Realista</div><div class="sc-alvo">${fmtPrice(c.pjBase)}</div><div class="sc-ret" id="proj-real-${c.ticker}">${rReal>=0?'+':''}${rReal}%</div></div>
            <div class="scenario-box scen-otim"><div class="sc-name">Otimista</div><div class="sc-alvo">${c.otim||fmtPrice(c.otimNum)}</div><div class="sc-ret" id="proj-otim-${c.ticker}">${rOtim>=0?'+':''}${rOtim}%</div></div>
          </div>
        </div>
      </div>`;
    });
  });
  el.innerHTML = html;
}

/* REMOVED renderAnalise */ function _NOOP_renderAnalise() {
  const el = document.getElementById('analiseContent');
  let html = '';
  SUBSETORES_EQ.forEach(sub => {
    html += `<div style="background:var(--green-50);border:1px solid var(--green-100);border-left:4px solid var(--green-600);border-radius:0 8px 8px 0;padding:10px 16px;font-weight:700;color:var(--green-800);font-size:15px;margin-bottom:4px;">${sub.nome}</div>`;
    const comps = sub.tickers.map(t=>COMPANIES_EQ.find(c=>c.ticker===t)).filter(Boolean);
    comps.forEach(c => {
      const price = getPrice(c.ticker), upside = getUpside(c.ticker);
      const sc = c.scoreNum, sColor = sc>=20?'#166534':sc>=16?'#16A34A':sc>=12?'#D97706':'#DC2626';
      html += `<div class="analise-card">
        <div class="analise-card-header">
          <div><span class="analise-ticker">${c.ticker}</span><span class="analise-nome" style="margin-left:10px">${c.nome}</span><br><span style="font-size:12px;opacity:0.8;margin-top:4px;display:block">${c.icon} ${c.subsetor}</span></div>
          <div style="text-align:right"><span class="analise-score">${c.score} · ${c.veredicto}</span><br><span style="font-size:12px;margin-top:6px;display:block;opacity:0.85">PJ: ${fmtPrice(c.pjBase)}</span></div>
        </div>
        <div class="analise-card-body">
          <div class="analise-summary">
            <div class="analise-kpi"><div class="kpi-label">Preço Atual</div><div class="kpi-val" id="analise-price-${c.ticker}">${fmtPrice(price)}</div></div>
            <div class="analise-kpi"><div class="kpi-label">Upside/Down</div><div class="kpi-val ${upsideClass(upside)}" id="analise-upside-${c.ticker}">${fmtPct(upside)}</div></div>
            <div class="analise-kpi"><div class="kpi-label">ROIC</div><div class="kpi-val">${c.roic||'N/D'}</div></div>
            <div class="analise-kpi"><div class="kpi-label">ROE</div><div class="kpi-val">${c.roe||'N/D'}</div></div>
            <div class="analise-kpi"><div class="kpi-label">P/L</div><div class="kpi-val">${c.pl||'N/D'}</div></div>
            <div class="analise-kpi"><div class="kpi-label">EV/EBIT</div><div class="kpi-val">${c.evEbit||'N/D'}</div></div>
            <div class="analise-kpi"><div class="kpi-label">Div. Yield</div><div class="kpi-val">${c.dy||'N/D'}</div></div>
            <div class="analise-kpi"><div class="kpi-label">P/FCO</div><div class="kpi-val">${c.pfco||'N/D'}</div></div>
          </div>
          <div class="analise-section"><div class="analise-section-title">✅ PONTOS POSITIVOS</div><div class="analise-section-content">${c.pontos_pos}</div></div>
          <div class="analise-section"><div class="analise-section-title" style="background:#FEF2F2;border-left-color:#DC2626;color:#991B1B">⚠️ PONTOS NEGATIVOS</div><div class="analise-section-content neg">${c.pontos_neg}</div></div>
          <div class="analise-section"><div class="analise-section-title" style="background:#EFF6FF;border-left-color:#2563EB;color:#1D4ED8">💰 FLUXO DE CAIXA</div><div class="analise-section-content" style="color:var(--slate)">${c.fco}</div></div>
          <div class="analise-section"><div class="analise-section-title" style="background:#F5F3FF;border-left-color:#7C3AED;color:#5B21B6">📊 VALUATION / DCF</div><div class="analise-section-content" style="color:var(--slate)">${c.dcf}</div></div>
          <div class="analise-section"><div class="analise-section-title" style="background:#ECFDF5;border-left-color:#059669;color:#065F46">🎯 ESTRATÉGIA</div><div class="analise-section-content" style="font-weight:600;color:var(--green-800)">${c.estrategiaDetalhe}</div></div>
        </div>
      </div>`;
    });
  });
  el.innerHTML = html;
}

/* REMOVED renderDecisorio */ function _NOOP_renderDecisorio() {
  const el = document.getElementById('decisorioContent');
  let html = '';
  SUBSETORES_EQ.forEach(sub => {
    const comps = sub.tickers.map(t=>COMPANIES_EQ.find(c=>c.ticker===t)).filter(Boolean);
    html += `<div class="decisorio-section"><div class="decisorio-header">${sub.nome}</div><div style="overflow-x:auto"><table class="decisorio-table"><thead><tr><th>Rank</th><th>Ticker</th><th>Nome</th><th>Pontuação</th><th>Veredicto</th><th>Momento</th><th>Preço Atual</th><th>Preço Justo</th><th>Upside/Down</th><th>Classificação</th><th>Estratégia</th></tr></thead><tbody>`;
    comps.forEach((c,idx) => {
      const price = getPrice(c.ticker), upside = getUpside(c.ticker);
      html += `<tr><td class="rank-num">${idx+1}</td><td><span class="ticker-chip">${c.ticker}</span></td><td style="font-weight:500;min-width:130px">${c.nome}</td><td><strong>${c.score}</strong></td><td><span class="${badgeClass(c.veredicto)}">${c.veredicto}</span></td><td style="font-size:11px;color:var(--slate)">${c.momento}</td><td class="val-live" id="dec-price-${c.ticker}">${fmtPrice(price)}</td><td class="val-price">${fmtPrice(c.pjBase)}</td><td><span class="${upsideClass(upside)}" id="dec-upside-${c.ticker}">${fmtPct(upside)}</span></td><td>${classifHTML(c)}</td><td class="strategy-text">${c.estrategia}</td></tr>`;
    });
    html += '</tbody></table></div></div>';
  });
  el.innerHTML = html;
}

/* REMOVED renderAll */ function _NOOP_renderAll() { renderRanking(); renderFactor(); renderMestra(); renderProjecoes(); renderAnalise(); renderDecisorio(); updateTopUpside(); }
/* REMOVED scheduleRefresh */ function _NOOP_scheduleRefresh() { const i=isMarketOpen()?90000:300000; setTimeout(async()=>{/* scheduleRefresh handled globally */},i); }
// renderAll() handled globally
// fetchAllPrices() handled globally


const EQ_COMPANIES = COMPANIES_EQ;
const EQ_SUBSETORES = SUBSETORES_EQ;
</script>

<script>
// ─── SAÚDE DATA ─────────────────────────────────────────

const FARMACIAS = [
  { rank:1, ticker:'RADL3', nome:'Raia Drogasil',  sub:'💊 Farmácias/Dist.', pj:28.18, classif:'Barato',    upside_base:'+20.9%', roic:'15.0%', roa:'5.5%',  roe:'18.9%', pl:'31.5x', evebit:'16.2x', dy:'1.6%',  divAtivo:'35.1%', ret1a:'+23.5%', veredicto:'✅ COMPRA',        score:'20/26', score_n:20 },
  { rank:2, ticker:'GMAT3', nome:'Grupo Mateus',   sub:'💊 Farmácias/Dist.', pj:7.85,  classif:'Pechincha', upside_base:'+73.3%', roic:'11.2%', roa:'8.6%',  roe:'17.3%', pl:'5.7x',  evebit:'7.3x',  dy:'5.5%',  divAtivo:'37.1%', ret1a:'-',       veredicto:'✅ COMPRA FORTE', score:'22/26', score_n:22 },
  { rank:3, ticker:'PGMN3', nome:'Pague Menos',    sub:'💊 Farmácias/Dist.', pj:8.85,  classif:'Barato',    upside_base:'+44.6%', roic:'10.6%', roa:'2.8%',  roe:'9.0%',  pl:'15.5x', evebit:'8.7x',  dy:'9.5%',  divAtivo:'47.7%', ret1a:'+107.6%',veredicto:'✅ COMPRA',        score:'15/26', score_n:15 },
  { rank:4, ticker:'OFSA3', nome:'Ouro Fino',      sub:'💊 Farmácias/Dist.', pj:34.08, classif:'Barato',    upside_base:'+21.7%', roic:'16.9%', roa:'15.1%', roe:'28.6%', pl:'6.8x',  evebit:'7.3x',  dy:'4.6%',  divAtivo:'25.1%', ret1a:'-',       veredicto:'✅ COMPRA',        score:'21/26', score_n:21 },
  { rank:5, ticker:'PNVL3', nome:'Dimed',          sub:'💊 Farmácias/Dist.', pj:17.39, classif:'Barato',    upside_base:'+21.9%', roic:'7.8%',  roa:'3.5%',  roe:'9.9%',  pl:'17.1x', evebit:'12.6x', dy:'2.4%',  divAtivo:'41.4%', ret1a:'+74.1%', veredicto:'✅ COMPRA',        score:'13/26', score_n:13 },
  { rank:6, ticker:'HYPE3', nome:'Hypera',         sub:'💊 Farmácias/Dist.', pj:31.65, classif:'Barato',    upside_base:'+42.9%', roic:'6.5%',  roa:'4.8%',  roe:'9.7%',  pl:'11.7x', evebit:'12.5x', dy:'5.8%',  divAtivo:'40.4%', ret1a:'-',       veredicto:'🟡 NEUTRO',       score:'12/26', score_n:12 },
  { rank:7, ticker:'PFRM3', nome:'Profarma',       sub:'💊 Farmácias/Dist.', pj:9.49,  classif:'Barato',    upside_base:'+29.1%', roic:'9.7%',  roa:'2.1%',  roe:'7.8%',  pl:'7.6x',  evebit:'6.7x',  dy:'8.8%',  divAtivo:'54.1%', ret1a:'-',       veredicto:'🟡 NEUTRO',       score:'11/26', score_n:11 },
  { rank:8, ticker:'DMVF3', nome:'D1000',          sub:'💊 Farmácias/Dist.', pj:6.75,  classif:'Justo',     upside_base:'+4.6%',  roic:'5.4%',  roa:'1.2%',  roe:'2.5%',  pl:'14.5x', evebit:'9.0x',  dy:'0.0%',  divAtivo:'51.7%', ret1a:'-',       veredicto:'🟡 NEUTRO',       score:'9/26',  score_n:9  },
  { rank:9, ticker:'VVEO3', nome:'CM Hospitalar',  sub:'💊 Farmácias/Dist.', pj:1.75,  classif:'Barato',    upside_base:'+44.6%', roic:'7.2%',  roa:'0.2%',  roe:'0.9%',  pl:'21.0x', evebit:'6.8x',  dy:'0.0%',  divAtivo:'91.0%', ret1a:'-',       veredicto:'🔴 VENDA',        score:'6/26',  score_n:6  },
];
const HOSPITAIS = [
  { rank:1, ticker:'RDOR3', nome:"Rede D'Or",     sub:'🏥 Hospital',          pj:55.15, classif:'Barato',    upside_base:'+46.2%', roic:'11.7%', roa:'4.6%',   roe:'20.0%',   pl:'18.1x',   evebit:'9.1x',  dy:'11.0%', divAtivo:'37.9%', ret1a:'+52.6%', veredicto:'✅ COMPRA FORTE', score:'22/26', score_n:22 },
  { rank:2, ticker:'FLRY3', nome:'Fleury',         sub:'🏥 Diagnóstico/Serv.', pj:21.90, classif:'Barato',    upside_base:'+42.2%', roic:'16.6%', roa:'4.5%',   roe:'11.4%',   pl:'13.7x',   evebit:'9.1x',  dy:'10.8%', divAtivo:'38.3%', ret1a:'+46.0%', veredicto:'✅ COMPRA FORTE', score:'21/26', score_n:21 },
  { rank:3, ticker:'ODPV3', nome:'Odontoprev',     sub:'🦷 Odontologia',       pj:12.37, classif:'Justo',     upside_base:'-6.9%',  roic:'47.5%', roa:'25.2%',  roe:'44.7%',   pl:'12.6x',   evebit:'7.8x',  dy:'7.0%',  divAtivo:'0.3%',  ret1a:'+17.4%', veredicto:'🟡 NEUTRO',       score:'18/26', score_n:18 },
  { rank:4, ticker:'MATD3', nome:'Mater Dei',      sub:'🏥 Hospital',          pj:7.07,  classif:'Barato',    upside_base:'+30.9%', roic:'6.5%',  roa:'2.6%',   roe:'7.6%',    pl:'16.1x',   evebit:'9.5x',  dy:'2.8%',  divAtivo:'54.9%', ret1a:'-',       veredicto:'✅ COMPRA',        score:'13/26', score_n:13 },
  { rank:5, ticker:'QUAL3', nome:'Qualicorp',      sub:'📋 Planos de Saúde',   pj:2.46,  classif:'Barato',    upside_base:'+28.1%', roic:'6.1%',  roa:'0.4%',   roe:'1.3%',    pl:'-214.5x', evebit:'5.1x',  dy:'0.5%',  divAtivo:'75.8%', ret1a:'+12.9%', veredicto:'🟡 NEUTRO',       score:'11/26', score_n:11 },
  { rank:6, ticker:'HAPV3', nome:'Hapvida',        sub:'📋 Planos de Saúde',   pj:15.53, classif:'Pechincha', upside_base:'+60.3%', roic:'1.4%',  roa:'-0.2%',  roe:'-0.3%',   pl:'-32.5x',  evebit:'8.1x',  dy:'0.0%',  divAtivo:'32.1%', ret1a:'-72.5%', veredicto:'🔴 VENDA',        score:'10/26', score_n:10 },
  { rank:7, ticker:'DASA3', nome:'DASA',           sub:'🏥 Diagnóstico/Serv.', pj:5.02,  classif:'Pechincha', upside_base:'+80.6%', roic:'3.5%',  roa:'-5.0%',  roe:'-15.3%',  pl:'-3.0x',   evebit:'5.0x',  dy:'0.0%',  divAtivo:'71.6%', ret1a:'-',       veredicto:'🔴 VENDA',        score:'7/26',  score_n:7  },
  { rank:8, ticker:'AALR3', nome:'Aliança Saúde',  sub:'🏥 Diagnóstico/Serv.', pj:4.97,  classif:'Barato',    upside_base:'+19.8%', roic:'5.1%',  roa:'-2.5%',  roe:'-6.2%',   pl:'-7.9x',   evebit:'10.7x', dy:'0.0%',  divAtivo:'51.9%', ret1a:'-',       veredicto:'🔴 VENDA',        score:'7/26',  score_n:7  },
  { rank:9, ticker:'ONCO3', nome:'Oncoclinicas',   sub:'🏥 Hospital',          pj:1.73,  classif:'Justo',     upside_base:'+6.1%',  roic:'-20.3%',roa:'-28.4%', roe:'-108.8%', pl:'-0.6x',   evebit:'-3.2x', dy:'0.0%',  divAtivo:'70.7%', ret1a:'-',       veredicto:'🔴 VENDA FORTE',  score:'3/26',  score_n:3  },
];
const SUBSETORES_SAU = [
  { nome:'💊 Farmácias & Distribuição', tickers:['RADL3','GMAT3','PGMN3','OFSA3','PNVL3','HYPE3','PFRM3','DMVF3','VVEO3'] },
  { nome:'🏥 Hospitais', tickers:['RDOR3','MATD3','ONCO3'] },
  { nome:'🔬 Diagnóstico & Serviços', tickers:['FLRY3','DASA3','AALR3'] },
  { nome:'🦷 Odontologia', tickers:['ODPV3'] },
  { nome:'📋 Planos de Saúde', tickers:['QUAL3','HAPV3'] }
];

const ALL_COMPANIES = [...FARMACIAS, ...HOSPITAIS];
ALL_COMPANIES.sort((a,b)=>(b.score_n||0)-(a.score_n||0));
ALL_COMPANIES.forEach((c,i)=>c.rankGlobal=i+1);
const COMPANIES_SAU = ALL_COMPANIES;

function calcHm(c){
  function pct(s){return parseFloat((s||'0').replace('%','').replace(',','.'))||0;}
  function mult(s){return parseFloat((s||'0').replace('x','').replace(',','.'))||0;}
  const roic=pct(c.roic),roa=pct(c.roa),roe=pct(c.roe);
  const pl=mult(c.pl),ev=mult(c.evebit||c.evEbit||'0'),dy=pct(c.dy),divA=pct(c.divAtivo);
  const up=parseFloat((c.upside_base||'0').replace('%','').replace(',','.'))||0;
  const r1a=parseFloat((c.ret1a||'0').replace('%','').replace(',','.'))||0;
  const cl=(c.classif||'justo').toLowerCase();
  return[
    roic>=10?2:roic>=6?1:0,
    roa>=6?2:roa>=3?1:0,
    roe>=15?2:roe>=8?1:0,
    pl>0&&pl<10?2:pl>0&&pl<=20?1:0,
    ev>0&&ev<8?2:ev>0&&ev<=15?1:0,
    dy>=6?2:dy>=3?1:0,
    1,1,
    divA<40?2:divA<65?1:0,
    1,
    up>15?2:up>5?1:0,
    cl.includes('pechincha')||cl.includes('barato')?2:cl.includes('justo')?1:0,
    r1a>30?2:r1a>10?1:r1a!==0?0:1
  ];
}

COMPANIES_SAU.forEach(c=>{
  c.nome=c.nome||c.name||c.ticker;
  const subStr=c.sub||c.subsetor||'Saúde';
  c.subsetor=subStr;
  c.icon=subStr.split(' ')[0]||'🏥';
  c.pjBase=c.pjBase||c.pj||0;
  c.classifBase=c.classifBase||c.classif||'Justo';
  c.scoreNum=c.scoreNum||c.score_n||0;
  if(!c.score) c.score=c.scoreNum+'/26';
  if(!c.precoBase&&c.upside_base){
    const u=parseFloat(c.upside_base.replace('%','').replace(',','.'))/100;
    if(!isNaN(u)&&Math.abs(1+u)>0.01) c.precoBase=c.pjBase/(1+u);
  }
  if(!c.precoBase) c.precoBase=c.pjBase*0.85;
  c.evEbit=c.evEbit||c.evebit||'N/D';
  c.pfco=c.pfco||'N/D'; c.pbook=c.pbook||'N/D';
  c.crescDiv=c.crescDiv||'N/D';
  c.ret1a=c.ret1a||'-';
  if(!c.hm||!c.hm.length) c.hm=calcHm(c);
  c.pessNum=c.pjBase*0.8; c.otimNum=c.pjBase*1.2;
  c.alvoAnal=c.alvoAnal||('R$'+c.pjBase.toFixed(2).replace('.',','));
  const v=c.veredicto||'';
  if(!v.includes('✅')&&!v.includes('🔴')&&!v.includes('🟡')){
    if(v.toUpperCase().includes('COMPRA FORTE')) c.veredicto='✅ COMPRA FORTE';
    else if(v.toUpperCase().includes('COMPRA')) c.veredicto='✅ COMPRA';
    else if(v.toUpperCase().includes('VENDA')) c.veredicto='🔴 VENDA / EVITAR';
    else c.veredicto='⚠️ NEUTRO';
  }
  c.momento=c.momento||(c.scoreNum>=20?'OPORTUNIDADE DE COMPRA':c.scoreNum>=16?'MONITORAR':'NÃO RECOMENDADO');
  if(!c.estrategiaDetalhe){
    if(c.scoreNum>=20) c.estrategiaDetalhe=`Compra — upside ${c.upside_base} vs PJ R$${(c.pjBase||0).toFixed(2)} · Setor de saúde crescimento estrutural`;
    else if(c.scoreNum>=16) c.estrategiaDetalhe=`Compra moderada — upside ${c.upside_base} · Monitorar fundamentos`;
    else if(c.scoreNum>=12) c.estrategiaDetalhe=`Neutro — aguardar melhora de fundamentos`;
    else c.estrategiaDetalhe=`EVITAR — fundamentos fracos · Upside ${c.upside_base} não compensa risco`;
  }
  c.estrategia=c.estrategia||c.estrategiaDetalhe;
  c.tip=c.tip||`${c.nome} — ROIC ${c.roic||'N/D'}, pontuação ${c.score}. ${c.classifBase} vs PJ R$${(c.pjBase||0).toFixed(2)}.`;
  if(!c.pontos_pos){
    const b=[],m=[];
    if(c.hm[0]===2) b.push(`• ROIC ${c.roic} — retorno sobre capital excelente, acima do WACC setorial`);
    else if(c.hm[0]===0) m.push(`• ROIC ${c.roic} — retorno sobre capital abaixo do mínimo requerido`);
    if(c.hm[2]===2) b.push(`• ROE ${c.roe} — alta rentabilidade sobre patrimônio líquido`);
    else if(c.hm[2]===0) m.push(`• ROE ${c.roe} — rentabilidade sobre PL abaixo do esperado`);
    if(c.hm[5]===2) b.push(`• Dividend Yield ${c.dy} — excelente rendimento de dividendos`);
    else if(c.hm[5]===0) m.push(`• Dividend Yield ${c.dy} — rendimento baixo`);
    if(c.hm[8]===2) b.push(`• Dívida/Ativo ${c.divAtivo} — estrutura de capital saudável`);
    else if(c.hm[8]===0) m.push(`• Dívida/Ativo ${c.divAtivo} — alavancagem elevada`);
    if(c.hm[10]===2) b.push(`• Upside ${c.upside_base} vs PJ R$${(c.pjBase||0).toFixed(2)} — margem de segurança significativa`);
    else if(c.hm[10]===0) m.push(`• Upside ${c.upside_base} limitado vs Preço Justo`);
    c.pontos_pos=b.length?b.join('\n'):'• Empresa com fundamentos dentro da média do setor de saúde';
    c.pontos_neg=m.length?m.join('\n'):'• Monitorar evolução dos indicadores de rentabilidade e endividamento';
  }
  if(!c.fco) c.fco=`Setor de saúde com geração de caixa estrutural. P/L: ${c.pl||'N/D'} · EV/EBIT: ${c.evEbit||'N/D'} · Dívida/Ativo: ${c.divAtivo||'N/D'}. Demanda por serviços de saúde tende a crescer acima do PIB independente do ciclo econômico.`;
  if(!c.dcf) c.dcf=`P/L: ${c.pl||'N/D'} · EV/EBIT: ${c.evEbit||'N/D'} · ROIC: ${c.roic||'N/D'}. PJ: R$${(c.pjBase||0).toFixed(2)} (classificação: ${c.classifBase}). Upside: ${c.upside_base||'N/D'}. WACC setorial ~10%. Setor premium com crescimento estrutural de longo prazo.`;
});

// FACTOR_CRITERIA global
// livePrices globallet lastFetchTime=null,marketOpen=false;
/* REMOVED isMarketOpen */
async function _NOOP_fetchAllPrices() {
  const btn=document.getElementById('updateBtn'),statusEl=document.getElementById('priceStatus'),marketEl=document.getElementById('marketStatus');
  btn.classList.add('loading');document.getElementById('updateBtnText').textContent='Buscando...';
  marketOpen=isMarketOpen();marketEl.textContent=marketOpen?'🟢 Mercado Aberto (B3)':'🔴 Mercado Fechado — Último Fechamento';
  const tickers=COMPANIES_SAU.map(c=>c.ticker);
  try{
    const res=await fetch(`https://brapi.dev/api/quote/${tickers.join(',')}?range=1d&interval=1d&fundamental=false&dividends=false`,{signal:AbortSignal.timeout(8000)});
    if(!res.ok) throw new Error('brapi');
    const data=await res.json();
    if(data.results) data.results.forEach(r=>{if(r.regularMarketPrice) livePrices[r.symbol]=r.regularMarketPrice;});
    lastFetchTime=new Date();statusEl.textContent=`${marketOpen?'🟢 Ao vivo':'🔴 Fechamento'} · ${lastFetchTime.toLocaleTimeString('pt-BR')}`;statusEl.className='price-status live';
  }catch(e){
    try{
      for(const t of tickers){try{const r2=await fetch(`https://corsproxy.io/?${encodeURIComponent('https://query1.finance.yahoo.com/v8/finance/chart/'+t+'.SA?interval=1d&range=1d')}`,{signal:AbortSignal.timeout(5000)});const d2=await r2.json();const p=d2?.chart?.result?.[0]?.meta?.regularMarketPrice;if(p) livePrices[t]=p;}catch{}}
      lastFetchTime=new Date();statusEl.textContent=`Via Yahoo · ${lastFetchTime.toLocaleTimeString('pt-BR')}`;statusEl.className='price-status live';
    }catch{statusEl.textContent='Cotação indisponível — usando dados base';}
  }
  btn.classList.remove('loading');document.getElementById('updateBtnText').textContent='⟳ Atualizar Cotações';
  // renderAll() handled globallyupdateTopUpside();
}
/* REMOVED getPrice */
/* REMOVED getUpside */
/* REMOVED fmtPrice */
/* REMOVED fmtPct */
/* REMOVED upsideClass */
/* REMOVED badgeClass */
/* REMOVED classifHTML */
/* REMOVED scoreColor */
/* REMOVED scoreEmoji */
/* REMOVED updateTopUpside */ function _NOOP_updateTopUpside() {const top2=COMPANIES_SAU.map(c=>({ticker:c.ticker,upside:getUpside(c.ticker)})).sort((a,b)=>b.upside-a.upside).slice(0,2);document.getElementById('topUpsideBar').textContent=top2.map(x=>x.ticker+' '+fmtPct(x.upside)).join(' · ');}
/* REMOVED showTab */ function _NOOP_showTab() {document.querySelectorAll('.section').forEach(s=>s.classList.remove('active'));document.querySelectorAll('.tab-btn').forEach(b=>b.classList.remove('active'));document.getElementById('tab-'+id).classList.add('active');btn.classList.add('active');}
/* REMOVED renderRanking */ function _NOOP_renderRanking() {
  let html='';
  SUBSETORES_SAU.forEach(sub=>{
    const comps=sub.tickers.map(t=>COMPANIES_SAU.find(c=>c.ticker===t)).filter(Boolean);
    html+=`<tr class="subsetor-header"><td colspan="18">${sub.nome}</td></tr>`;
    comps.forEach(c=>{
      const price=getPrice(c.ticker),upside=getUpside(c.ticker),sc=c.scoreNum;
      const barW=Math.round(sc/26*100),barColor=sc>=20?'#166534':sc>=16?'#16A34A':sc>=12?'#D97706':'#DC2626';
      html+=`<tr><td class="rank-num">${c.rankGlobal||c.rank}</td><td><span class="ticker-chip">${c.ticker}</span></td><td style="font-weight:500;min-width:120px">${c.nome}</td><td style="font-size:11px;color:var(--slate)">${c.icon} ${c.subsetor}</td><td class="val-live" id="price-${c.ticker}">${fmtPrice(price)}</td><td class="val-price">${fmtPrice(c.pjBase)}</td><td>${classifHTML(c)}</td><td><span class="${upsideClass(upside)}" id="upside-${c.ticker}">${fmtPct(upside)}</span></td><td class="val-mono">${c.roic||'N/D'}</td><td class="val-mono">${c.roa||'N/D'}</td><td class="val-mono">${c.roe||'N/D'}</td><td class="val-mono">${c.pl||'N/D'}</td><td class="val-mono">${c.evEbit||'N/D'}</td><td class="val-mono">${c.dy||'N/D'}</td><td class="val-mono">${c.divAtivo||'N/D'}</td><td class="val-mono" style="color:${(c.ret1a||'-').startsWith('+')?'var(--green-700)':'var(--red)'}">${c.ret1a||'-'}</td><td><span class="${badgeClass(c.veredicto)}">${c.veredicto}</span></td><td><div class="score-display"><div class="score-bar-wrap"><div class="score-bar" style="width:${barW}%;background:${barColor}"></div></div><span class="score-text" style="color:${barColor}">${c.score}</span></div></td></tr>`;
    });
  });
  document.getElementById('rankingTbody').innerHTML=html;
}
/* REMOVED renderFactor */ function _NOOP_renderFactor() {
  let html='';
  SUBSETORES_SAU.forEach(sub=>{
    const comps=sub.tickers.map(t=>COMPANIES_SAU.find(c=>c.ticker===t)).filter(Boolean);
    html+=`<div class="heatmap-wrap"><div class="heatmap-header">${sub.nome}</div><div style="overflow-x:auto"><table class="heatmap-table"><thead><tr><th style="text-align:left">INDICADOR / FATOR</th>`;
    comps.forEach(c=>{html+=`<th>#${c.rankGlobal||c.rank}<br><span style="font-family:JetBrains Mono,monospace;font-size:11px">${c.ticker}</span><br>${c.score}</th>`;});
    html+='</tr></thead><tbody>';
    FACTOR_CRITERIA.forEach((crit,fi)=>{html+=`<tr><td>${crit}</td>`;comps.forEach(c=>{const s=c.hm[fi]??0;html+=`<td class="${scoreColor(s)}">${scoreEmoji(s)}<br>${s}</td>`;});html+='</tr>';});
    html+='<tr><td>▶ PONTUAÇÃO TOTAL (0–26)</td>';comps.forEach(c=>{html+=`<td>${c.score}</td>`;});html+='</tr></tbody></table></div></div>';
  });
  document.getElementById('factorContent').innerHTML=html;
}
/* REMOVED renderMestra */ function _NOOP_renderMestra() {
  const comps=COMPANIES_SAU;
  let hh='<tr><th class="sticky-col" style="min-width:180px">INDICADOR</th>';
  comps.forEach(c=>{hh+=`<th>#${c.rankGlobal||c.rank}<br>${c.ticker}</th>`;});
  document.getElementById('mestraThead').innerHTML=hh+'</tr>';
  const rows=[
    {label:'  PREÇO & CLASSIFICAÇÃO',group:true},
    {label:'Preço Atual',fn:c=>`<span class="val-live" id="mestra-price-${c.ticker}">${fmtPrice(getPrice(c.ticker))}</span>`},
    {label:'Preço Justo',fn:c=>`<span class="val-price">${fmtPrice(c.pjBase)}</span>`},
    {label:'Classif.',fn:c=>classifHTML(c)},
    {label:'Upside',fn:c=>`<span class="${upsideClass(getUpside(c.ticker))}" id="mestra-upside-${c.ticker}">${fmtPct(getUpside(c.ticker))}</span>`},
    {label:'  RENTABILIDADE',group:true},
    {label:'ROIC',fn:c=>c.roic||'N/D'},{label:'ROA',fn:c=>c.roa||'N/D'},{label:'ROE',fn:c=>c.roe||'N/D'},
    {label:'  VALUATION',group:true},
    {label:'P/L',fn:c=>c.pl||'N/D'},{label:'EV/EBIT',fn:c=>c.evEbit||'N/D'},
    {label:'  DIVIDENDOS',group:true},
    {label:'Div.Yield',fn:c=>c.dy||'N/D'},{label:'Ret.1A',fn:c=>`<span style="color:${(c.ret1a||'-').startsWith('+')?'var(--green-700)':'var(--red)'}">${c.ret1a||'-'}</span>`},
    {label:'  SAÚDE FIN.',group:true},
    {label:'Dív/Ativo',fn:c=>c.divAtivo||'N/D'},
    {label:'  FACTOR',group:true},
    {label:'Pontuação',fn:c=>`<strong>${c.score}</strong>`},
    {label:'Veredicto',fn:c=>`<span class="${badgeClass(c.veredicto)}">${c.veredicto}</span>`},
    {label:'Sub-Setor',fn:c=>`${c.icon} ${c.subsetor}`}
  ];
  let tb='';
  rows.forEach(r=>{
    if(r.group){tb+=`<tr class="subsetor-header"><td class="sticky-col" colspan="${comps.length+1}" style="font-size:11px;letter-spacing:.5px">${r.label}</td></tr>`;}
    else{tb+=`<tr><td class="sticky-col" style="font-weight:500;color:var(--slate);font-size:12px">${r.label}</td>`;comps.forEach(c=>{tb+=`<td style="text-align:center;font-size:12px;font-family:JetBrains Mono,monospace">${r.fn(c)}</td>`;});tb+='</tr>';}
  });
  document.getElementById('mestraTbody').innerHTML=tb;
}
/* REMOVED renderProjecoes */ function _NOOP_renderProjecoes() {
  let html='';
  SUBSETORES_SAU.forEach(sub=>{
    html+=`<div style="grid-column:1/-1;background:var(--green-50);border:1px solid var(--green-100);border-left:4px solid var(--green-600);border-radius:0 8px 8px 0;padding:8px 14px;font-weight:700;color:var(--green-800);font-size:14px;">${sub.nome}</div>`;
    sub.tickers.map(t=>COMPANIES_SAU.find(c=>c.ticker===t)).filter(Boolean).forEach(c=>{
      const price=getPrice(c.ticker),upside=getUpside(c.ticker);
      const rP=price?((c.pessNum-price)/price*100).toFixed(1):'0.0',rR=price?((c.pjBase-price)/price*100).toFixed(1):'0.0',rO=price?((c.otimNum-price)/price*100).toFixed(1):'0.0';
      html+=`<div class="proj-card"><div class="proj-card-header"><div><div style="font-weight:700;font-size:14px">${c.nome}</div><div style="font-size:11px;opacity:.75;margin-top:2px">${c.icon} ${c.subsetor}</div></div><div style="text-align:right"><span style="font-family:JetBrains Mono,monospace;font-size:12px;opacity:.8">${c.ticker}</span><br><span class="${badgeClass(c.veredicto)}" style="font-size:11px;margin-top:4px">${c.veredicto}</span></div></div><div class="proj-card-body"><div class="proj-row"><span class="proj-label">Preço Atual</span><span class="proj-val val-live" id="proj-price-${c.ticker}">${fmtPrice(price)}</span></div><div class="proj-row"><span class="proj-label">Preço Justo (PJ)</span><span class="proj-val">${fmtPrice(c.pjBase)}</span></div><div class="proj-row"><span class="proj-label">Upside vs PJ</span><span class="proj-val ${upsideClass(upside)}" id="proj-upside-${c.ticker}">${fmtPct(upside)}</span></div><div class="proj-row"><span class="proj-label">Pontuação Factor</span><span class="proj-val">${c.score}</span></div><p style="font-size:11px;color:var(--slate);margin:8px 0 4px;line-height:1.4">⚡ ${c.tip}</p><div class="proj-scenarios"><div class="scenario-box scen-pess"><div class="sc-name">Pessimista</div><div class="sc-alvo">${fmtPrice(c.pessNum)}</div><div class="sc-ret" id="proj-pess-${c.ticker}">${rP>=0?'+':''}${rP}%</div></div><div class="scenario-box scen-real"><div class="sc-name">Realista</div><div class="sc-alvo">${fmtPrice(c.pjBase)}</div><div class="sc-ret" id="proj-real-${c.ticker}">${rR>=0?'+':''}${rR}%</div></div><div class="scenario-box scen-otim"><div class="sc-name">Otimista</div><div class="sc-alvo">${fmtPrice(c.otimNum)}</div><div class="sc-ret" id="proj-otim-${c.ticker}">${rO>=0?'+':''}${rO}%</div></div></div></div></div>`;
    });
  });
  document.getElementById('projContent').innerHTML=html;
}
/* REMOVED renderAnalise */ function _NOOP_renderAnalise() {
  let html='';
  SUBSETORES_SAU.forEach(sub=>{
    html+=`<div style="background:var(--green-50);border:1px solid var(--green-100);border-left:4px solid var(--green-600);border-radius:0 8px 8px 0;padding:10px 16px;font-weight:700;color:var(--green-800);font-size:15px;margin-bottom:4px;">${sub.nome}</div>`;
    sub.tickers.map(t=>COMPANIES_SAU.find(c=>c.ticker===t)).filter(Boolean).forEach(c=>{
      const price=getPrice(c.ticker),upside=getUpside(c.ticker);
      html+=`<div class="analise-card"><div class="analise-card-header"><div><span class="analise-ticker">${c.ticker}</span><span class="analise-nome" style="margin-left:10px">${c.nome}</span><br><span style="font-size:12px;opacity:.8;margin-top:4px;display:block">${c.icon} ${c.subsetor}</span></div><div style="text-align:right"><span class="analise-score">${c.score} · ${c.veredicto}</span><br><span style="font-size:12px;margin-top:6px;display:block;opacity:.85">PJ: ${fmtPrice(c.pjBase)}</span></div></div><div class="analise-card-body"><div class="analise-summary"><div class="analise-kpi"><div class="kpi-label">Preço Atual</div><div class="kpi-val" id="analise-price-${c.ticker}">${fmtPrice(price)}</div></div><div class="analise-kpi"><div class="kpi-label">Upside/Down</div><div class="kpi-val ${upsideClass(upside)}" id="analise-upside-${c.ticker}">${fmtPct(upside)}</div></div><div class="analise-kpi"><div class="kpi-label">ROIC</div><div class="kpi-val">${c.roic||'N/D'}</div></div><div class="analise-kpi"><div class="kpi-label">ROE</div><div class="kpi-val">${c.roe||'N/D'}</div></div><div class="analise-kpi"><div class="kpi-label">P/L</div><div class="kpi-val">${c.pl||'N/D'}</div></div><div class="analise-kpi"><div class="kpi-label">EV/EBIT</div><div class="kpi-val">${c.evEbit||'N/D'}</div></div><div class="analise-kpi"><div class="kpi-label">Div.Yield</div><div class="kpi-val">${c.dy||'N/D'}</div></div><div class="analise-kpi"><div class="kpi-label">Dív/Ativo</div><div class="kpi-val">${c.divAtivo||'N/D'}</div></div></div><div class="analise-section"><div class="analise-section-title">✅ PONTOS POSITIVOS</div><div class="analise-section-content">${c.pontos_pos}</div></div><div class="analise-section"><div class="analise-section-title" style="background:#FEF2F2;border-left-color:#DC2626;color:#991B1B">⚠️ PONTOS NEGATIVOS</div><div class="analise-section-content neg">${c.pontos_neg}</div></div><div class="analise-section"><div class="analise-section-title" style="background:#EFF6FF;border-left-color:#2563EB;color:#1D4ED8">💰 FLUXO DE CAIXA</div><div class="analise-section-content" style="color:var(--slate)">${c.fco}</div></div><div class="analise-section"><div class="analise-section-title" style="background:#F5F3FF;border-left-color:#7C3AED;color:#5B21B6">📊 VALUATION / DCF</div><div class="analise-section-content" style="color:var(--slate)">${c.dcf}</div></div><div class="analise-section"><div class="analise-section-title" style="background:#ECFDF5;border-left-color:#059669;color:#065F46">🎯 ESTRATÉGIA</div><div class="analise-section-content" style="font-weight:600;color:var(--green-800)">${c.estrategiaDetalhe}</div></div></div></div>`;
    });
  });
  document.getElementById('analiseContent').innerHTML=html;
}
/* REMOVED renderDecisorio */ function _NOOP_renderDecisorio() {
  let html='';
  SUBSETORES_SAU.forEach(sub=>{
    const comps=sub.tickers.map(t=>COMPANIES_SAU.find(c=>c.ticker===t)).filter(Boolean);
    html+=`<div class="decisorio-section"><div class="decisorio-header">${sub.nome}</div><div style="overflow-x:auto"><table class="decisorio-table"><thead><tr><th>Rank</th><th>Ticker</th><th>Nome</th><th>Pontuação</th><th>Veredicto</th><th>Momento</th><th>Preço Atual</th><th>Preço Justo</th><th>Upside/Down</th><th>Classificação</th><th>Estratégia</th></tr></thead><tbody>`;
    comps.forEach((c,idx)=>{
      const price=getPrice(c.ticker),upside=getUpside(c.ticker);
      html+=`<tr><td class="rank-num">${idx+1}</td><td><span class="ticker-chip">${c.ticker}</span></td><td style="font-weight:500;min-width:120px">${c.nome}</td><td><strong>${c.score}</strong></td><td><span class="${badgeClass(c.veredicto)}">${c.veredicto}</span></td><td style="font-size:11px;color:var(--slate)">${c.momento}</td><td class="val-live" id="dec-price-${c.ticker}">${fmtPrice(price)}</td><td class="val-price">${fmtPrice(c.pjBase)}</td><td><span class="${upsideClass(upside)}" id="dec-upside-${c.ticker}">${fmtPct(upside)}</span></td><td>${classifHTML(c)}</td><td class="strategy-text">${c.estrategia}</td></tr>`;
    });
    html+='</tbody></table></div></div>';
  });
  document.getElementById('decisorioContent').innerHTML=html;
}
/* REMOVED renderAll */ function _NOOP_renderAll() {renderRanking();renderFactor();renderMestra();renderProjecoes();renderAnalise();renderDecisorio();updateTopUpside();}
/* REMOVED scheduleRefresh */ function _NOOP_scheduleRefresh() {const i=isMarketOpen()?90000:300000;setTimeout(async()=>{/* scheduleRefresh handled globally */},i);}
// renderAll() handled globally
// fetchAllPrices() handled globally


const SAU_COMPANIES = COMPANIES_SAU;
const SAU_SUBSETORES = SUBSETORES_SAU;
</script>

<script>
// ─── INIT & RENDER ALL ───────────────────────────────────
renderAllFor('EN', EN_COMPANIES, EN_SUBSETORES, true);
renderAllFor('PET', PET_COMPANIES, PET_SUBSETORES, true);
renderAllFor('IMO', IMO_COMPANIES, IMO_SUBSETORES, false);
renderAllFor('EQ', EQ_COMPANIES, EQ_SUBSETORES, false);
renderAllFor('SAU', SAU_COMPANIES, SAU_SUBSETORES, true);
updateHistTickerSelect();
renderHistory();
fetchAllSectorPrices().then(() => scheduleGlobalRefresh());
</script>
</body>
</html>
