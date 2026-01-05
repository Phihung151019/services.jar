.class public final Lcom/android/server/location/gnss/sec/CarrierConfig;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static mInstance:Lcom/android/server/location/gnss/sec/CarrierConfig;


# instance fields
.field public mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

.field public mDeviceMode:Ljava/lang/String;

.field public final mExtraConfigHashMap:Ljava/util/HashMap;

.field public mSalesCode:Ljava/lang/String;

.field public final mSalesCodeToCarrierMap:Ljava/util/HashMap;

.field public mSimOperator:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TMO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string/jumbo v1, "TMB"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TMK:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string/jumbo v1, "TMK"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFN:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string/jumbo v1, "TFN"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string/jumbo v1, "TFO"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_DSH:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v1, "DSH"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_DSA:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v1, "DSA"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_DSG:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v1, "DSG"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_ATT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v1, "ATT"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_AIO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v1, "AIO"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFA:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string/jumbo v1, "TFA"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string/jumbo v1, "TFC"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string/jumbo v1, "XAU"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAA:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string/jumbo v1, "XAA"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string/jumbo v1, "XAR"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAG:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string/jumbo v1, "XAG"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_VZW:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string/jumbo v1, "VZW"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_SPR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string/jumbo v1, "SPR"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string/jumbo v1, "XAS"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_BST:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v1, "BST"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_VMU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string/jumbo v1, "VMU"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_USC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string/jumbo v1, "USC"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_ACG:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v1, "ACG"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_DCM:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v1, "DCM"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_KDI:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v1, "KDI"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "JCO"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "UQM"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_RKT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string/jumbo v1, "RKT"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_SBM:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string/jumbo v1, "SBM"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_TLS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string/jumbo v1, "TLS"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KDO"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "PMB"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_BMC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v1, "BMC"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "VMC"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "PCM"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "SOL"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BWA"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_RWC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string/jumbo v1, "RWC"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "FMC"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CHR"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "TBT"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "VTR"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "FIZ"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ESK"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "SJR"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GLW"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_XAC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string/jumbo v1, "XAC"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CAO"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_SKT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string/jumbo v1, "SKT"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "SKC"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "SKO"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_LGT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v1, "LGT"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "LUC"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "LUO"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_KTT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v1, "KTT"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KTC"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KTO"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CMC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v1, "CHM"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CTC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v1, "CTC"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v1, "CHU"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v1, "CHN"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CHC"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->ARG_UFN:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string/jumbo v1, "UFN"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_MNX:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string/jumbo v1, "MNX"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_IUS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v1, "IUS"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_UNE:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string/jumbo v1, "UNE"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->PER_PEO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string/jumbo v1, "PEO"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->PER_PNT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string/jumbo v1, "PNT"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->PER_PET:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string/jumbo v1, "PET"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->SUI_SWC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string/jumbo v1, "SWC"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->TUR_TUR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string/jumbo v1, "TUR"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->SWA_IND:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string v1, "INS"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "INU"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/location/gnss/sec/CarrierConfig;
    .locals 2

    const-class v0, Lcom/android/server/location/gnss/sec/CarrierConfig;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig;->mInstance:Lcom/android/server/location/gnss/sec/CarrierConfig;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-direct {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;-><init>()V

    sput-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig;->mInstance:Lcom/android/server/location/gnss/sec/CarrierConfig;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig;->mInstance:Lcom/android/server/location/gnss/sec/CarrierConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static isAttConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z
    .locals 1

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_ATT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_DSA:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_DSG:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFA:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_AIO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isTmbConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z
    .locals 1

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TMO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_DSH:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TMK:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAG:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaMarket()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_SKT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "45011"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "45008"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "45006"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v3, "45005"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v1

    :pswitch_1
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_KTT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_LGT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    return-object p0

    :pswitch_3
    return-object v1

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCodeToCarrierMap:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    sget-object v1, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->NO_OPERATOR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x2f59814 -> :sswitch_3
        0x2f59815 -> :sswitch_2
        0x2f59817 -> :sswitch_1
        0x2f5982f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getConfigMap()Ljava/util/HashMap;
    .locals 40

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isAttConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z

    move-result v2

    const-string v3, "ENABLE_GALILEO"

    const-string v4, "23"

    const-string/jumbo v5, "WARM_STANDBY2"

    const-string v6, "3"

    const-string v7, "EE_SYNC_THRESHOLD_DAYS"

    const-string/jumbo v8, "RTI_ENABLE"

    const-string/jumbo v9, "VENDOR_LBS_SERVER_ENABLE"

    const-string/jumbo v10, "SUPL_NI_ALLOW_GPS_OFF"

    const-string v11, "AUTO_SUPL_VERSION_FOR_NI"

    const-string v12, "7200"

    const-string v13, "2"

    const-string v14, "CP_LPP_GUARD_TIME_SEC"

    const-string/jumbo v15, "TLSv1_2"

    move/from16 v16, v2

    const-string/jumbo v2, "REAIDING_INTERVAL_SEC"

    move-object/from16 v17, v1

    const-string/jumbo v1, "SUPL_OTDOA_CAPABLE"

    move-object/from16 v18, v3

    const-string/jumbo v3, "SUPL_ECID_CAPABLE"

    move-object/from16 v19, v4

    const-string/jumbo v4, "SHA256"

    move-object/from16 v20, v5

    const-string/jumbo v5, "SUPL_HMAC_HASH"

    move-object/from16 v21, v6

    const-string/jumbo v6, "SUPL_SSL_METHOD"

    move-object/from16 v22, v7

    const-string/jumbo v7, "SUPL_USE_APN"

    move-object/from16 v23, v8

    const-string v8, "FALSE"

    move-object/from16 v24, v9

    const-string/jumbo v9, "SUPL_LPP_CAPABLE"

    move-object/from16 v25, v1

    const-string/jumbo v1, "TRUE"

    if-eqz v16, :cond_0

    move-object/from16 v16, v9

    iget-object v9, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v9, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v9, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v6, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v9, v16

    invoke-virtual {v2, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v3, v25

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v3, v24

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v3, v23

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v3, v18

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    :cond_0
    move-object/from16 v26, v18

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v29, v21

    move-object/from16 v30, v22

    move-object/from16 v31, v23

    move-object/from16 v32, v24

    move-object/from16 v33, v25

    invoke-static/range {v17 .. v17}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isTmbConfigRequired(Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;)Z

    move-result v16

    const/16 v18, 0x0

    move-object/from16 v19, v9

    const-string v9, "ENABLE_5G_CP_CAPS_AUTO"

    move-object/from16 v20, v9

    const-string v9, "ENABLE_5G_CP_CAPS_MSA"

    move-object/from16 v21, v9

    const-string v9, "1"

    move-object/from16 v22, v9

    const-string v9, "ENABLE_5G_CP_CAPS_MSB"

    if-eqz v16, :cond_2

    move-object/from16 v16, v9

    iget-object v9, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v9, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v9, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v6, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v9, v19

    invoke-virtual {v2, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v3, v33

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v3, v32

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v3, v31

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v3, v26

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mDeviceMode:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tablet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    :cond_1
    if-nez v18, :cond_1e

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v4, v16

    move-object/from16 v3, v22

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v4, v21

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v4, v20

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v4, "ENABLE_4G_CP_CAPS_MSB"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v4, "ENABLE_4G_CP_CAPS_MSA"

    const-string v5, "0"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v4, "ENABLE_4G_CP_CAPS_AUTO"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v4, "ENABLE_3G_CP_CAPS_MSB"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v4, "ENABLE_3G_CP_CAPS_MSA"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v4, "ENABLE_3G_CP_CAPS_AUTO"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v4, "ENABLE_2G_CP_CAPS_MSB"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v4, "ENABLE_2G_CP_CAPS_MSA"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v4, "ENABLE_2G_CP_CAPS_AUTO"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v3, "ENABLE_LPPE_CIVIC_ADDRESS"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v3, "ENABLE_LPP_HA_GAD_SHAPE"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    :cond_2
    move-object/from16 v39, v9

    move-object/from16 v16, v15

    move-object/from16 v9, v19

    move-object/from16 v36, v20

    move-object/from16 v37, v21

    move-object/from16 v38, v22

    move-object/from16 v19, v27

    move-object/from16 v34, v28

    move-object/from16 v21, v29

    move-object/from16 v35, v30

    move-object/from16 v23, v31

    move-object/from16 v24, v32

    move-object/from16 v25, v33

    sget-object v15, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_BMC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const/16 v20, 0x1

    move-object/from16 v22, v9

    move-object/from16 v9, v17

    if-eq v9, v15, :cond_4

    sget-object v15, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_RWC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq v9, v15, :cond_4

    sget-object v15, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_TLS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq v9, v15, :cond_4

    sget-object v15, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CAD_XAC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne v9, v15, :cond_3

    goto :goto_0

    :cond_3
    move/from16 v17, v18

    goto :goto_1

    :cond_4
    :goto_0
    move/from16 v17, v20

    :goto_1
    const-string/jumbo v15, "TLSv1"

    move-object/from16 v27, v9

    const-string v9, "300"

    move-object/from16 v28, v3

    const-string/jumbo v3, "emergencyExtensionSeconds"

    if-eqz v17, :cond_5

    move-object/from16 v17, v10

    iget-object v10, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v10, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v6, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v3, v17

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v10, v28

    invoke-virtual {v2, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v11, v22

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v12, v25

    invoke-virtual {v2, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v3, v24

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v3, v23

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v3, v21

    move-object/from16 v4, v35

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v3, v19

    move-object/from16 v4, v34

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v3, v26

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    :cond_5
    move-object/from16 v11, v22

    move-object/from16 v12, v25

    move-object/from16 v10, v28

    sget-object v13, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_VZW:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    move-object/from16 v14, v27

    if-ne v14, v13, :cond_6

    move/from16 v17, v20

    goto :goto_2

    :cond_6
    move/from16 v17, v18

    :goto_2
    const-string/jumbo v13, "SUPL_LPPE_CAPABLE"

    move-object/from16 v19, v9

    const-string v9, "30"

    move-object/from16 v21, v3

    const-string/jumbo v3, "SUPL_UT3_SEC"

    move-object/from16 v22, v2

    const-string/jumbo v2, "SUPL_UT2_SEC"

    move-object/from16 v28, v10

    const-string v10, "10"

    move-object/from16 v23, v15

    const-string/jumbo v15, "SUPL_UT1_SEC"

    move-object/from16 v27, v14

    const-string/jumbo v14, "USE_RRLP_GOOGLE_SUPL"

    if-eqz v17, :cond_7

    move-object/from16 v17, v13

    iget-object v13, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v13, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v11, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v13, v16

    invoke-virtual {v2, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string/jumbo v3, "SUPL_MULTI_LOCID_CAPABLE"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v3, v17

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    :cond_7
    move-object/from16 v17, v16

    move-object/from16 v16, v9

    move-object v9, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v3

    sget-object v3, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_SPR:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    move-object/from16 v24, v2

    move-object/from16 v2, v27

    if-eq v2, v3, :cond_9

    sget-object v3, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq v2, v3, :cond_9

    sget-object v3, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_BST:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq v2, v3, :cond_9

    sget-object v3, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_VMU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne v2, v3, :cond_8

    goto :goto_3

    :cond_8
    move/from16 v25, v18

    goto :goto_4

    :cond_9
    :goto_3
    move/from16 v25, v20

    :goto_4
    const-string/jumbo v3, "USE_NI_SLP_ADDRESS"

    if-eqz v25, :cond_a

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v9, v23

    invoke-virtual {v2, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string/jumbo v2, "SUPL_HOST_NI"

    const-string/jumbo v3, "supl2019.lbs.sprint.com"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    :cond_a
    move-object/from16 v23, v10

    sget-object v10, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_USC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq v2, v10, :cond_c

    sget-object v10, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_ACG:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne v2, v10, :cond_b

    goto :goto_5

    :cond_b
    move/from16 v10, v18

    goto :goto_6

    :cond_c
    :goto_5
    move/from16 v10, v20

    :goto_6
    if-eqz v10, :cond_d

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string/jumbo v2, "TLSv1_1"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    :cond_d
    sget-object v10, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->ARG_UFN:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne v2, v10, :cond_e

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    :cond_e
    sget-object v10, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_MNX:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq v2, v10, :cond_f

    sget-object v10, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_IUS:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq v2, v10, :cond_f

    sget-object v10, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->MEX_UNE:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne v2, v10, :cond_10

    :cond_f
    move/from16 v18, v20

    :cond_10
    if-eqz v18, :cond_11

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v10, v28

    invoke-virtual {v2, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    :cond_11
    move-object/from16 v10, v28

    sget-object v14, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->PER_PEO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq v2, v14, :cond_1d

    sget-object v14, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->PER_PET:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq v2, v14, :cond_1d

    sget-object v14, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->PER_PNT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne v2, v14, :cond_12

    goto/16 :goto_8

    :cond_12
    sget-object v14, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->SWA_IND:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne v2, v14, :cond_13

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v3, "ENABLE_NAVIC"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v3, v38

    move-object/from16 v4, v39

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v4, v37

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v4, v36

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    :cond_13
    sget-object v14, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_LGT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    move-object/from16 v18, v15

    const-string v15, "ALLOW_CP_IGNORE_NFW_LOCATION_POLICY"

    move-object/from16 v20, v7

    const-string v7, "ALLOW_SUPL_IGNORE_NFW_LOCATION_POLICY"

    move-object/from16 v25, v6

    const-string/jumbo v6, "SUPL_VER_SKT_NI"

    if-ne v2, v14, :cond_14

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    :cond_14
    sget-object v14, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_KTT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne v2, v14, :cond_15

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    :cond_15
    sget-object v9, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->KOR_SKT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne v2, v9, :cond_16

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    :cond_16
    sget-object v6, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CMC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne v2, v6, :cond_17

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v3, "600"

    move-object/from16 v4, v22

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string/jumbo v3, "SUPL_LOG_ENABLE"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string/jumbo v3, "SUPL_LOG_PATH"

    const-string v4, "/data/AGPSLog.txt"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string/jumbo v3, "SUPL_NI_GPS_ICON"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string/jumbo v3, "NO_DATA_STANDALONE"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string/jumbo v3, "VENDOR_LBS_XTRA_SET_WITH_EE_IGNORE"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    :cond_17
    sget-object v7, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHN:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq v2, v7, :cond_1c

    sget-object v7, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq v2, v7, :cond_1c

    sget-object v7, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq v2, v7, :cond_1c

    if-eq v2, v6, :cond_1c

    sget-object v6, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CTC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne v2, v6, :cond_18

    goto/16 :goto_7

    :cond_18
    sget-object v6, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_DCM:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne v2, v6, :cond_19

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string/jumbo v3, "SUPL_IS_AGGRESSIVE"

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string/jumbo v3, "SUPL_NTT_DOCOMO"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string/jumbo v3, "SUPL_OPERATOR_DCM"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v3, v25

    invoke-virtual {v2, v3, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v4, v20

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v3, v18

    move-object/from16 v2, v23

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v3, v24

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v3, v17

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string/jumbo v2, "TCP_CONNETION_TIMEOUT"

    move-object/from16 v3, v16

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    :cond_19
    move-object/from16 v4, v20

    sget-object v5, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_KDI:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne v2, v5, :cond_1a

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v5, "240"

    move-object/from16 v6, v21

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string/jumbo v5, "SUPL_OPERATOR_KDDI"

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string/jumbo v5, "SUPL_SETCAPS_MSA_NI"

    invoke-virtual {v2, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string/jumbo v5, "SUPL_SETCAPS_MSA_SI"

    invoke-virtual {v2, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v2, "ENABLE_CONCUR_CP_CID_REQUESTS"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_1a
    move-object/from16 v6, v21

    sget-object v5, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_RKT:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne v2, v5, :cond_1b

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string/jumbo v5, "SUPL_OPERATOR_RAKUTEN"

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_1b
    sget-object v5, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_SBM:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne v2, v5, :cond_1e

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    move-object/from16 v5, v19

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string/jumbo v5, "SUPL_PRVOVRD_IGNORED"

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_1c
    :goto_7
    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    const-string v3, "ENABLE_SUPL_AGNSS_BEIDOU"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_1d
    :goto_8
    iget-object v2, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    :goto_9
    iget-object v0, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mExtraConfigHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public final isCanadaMarket()Z
    .locals 5

    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ro.csc.countryiso_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isCaMarket : code/country_Code/countryISO_Code = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v4, "/"

    invoke-static {v2, v3, v4, v0, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "CarrierConfigForGnss"

    invoke-static {v2, v1, v3}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "BMC"

    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "RWC"

    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "TLS"

    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "SJR"

    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "XAC"

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "Canada"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "CA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    const-string/jumbo v0, "isCaMarket : "

    invoke-static {v0, v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public final isChinaCarrier()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHN:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHU:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CMC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CTC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isJapanMarket()Z
    .locals 2

    const-string v0, "DCM"

    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "KDI"

    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "SBM"

    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "RKT"

    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "SJP"

    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "JCO"

    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "UQM"

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    const-string/jumbo v0, "isJapanMarket : "

    const-string v1, "CarrierConfigForGnss"

    invoke-static {v0, v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public final isKoreaMarket()Z
    .locals 2

    const-string/jumbo v0, "SKT"

    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "SKC"

    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "SKO"

    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LGT"

    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LUC"

    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LUO"

    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "KTT"

    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "KTC"

    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "KTO"

    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "KOO"

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    const-string/jumbo v0, "isKORMarket : "

    const-string v1, "CarrierConfigForGnss"

    invoke-static {v0, v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public final isKoreaSktSim()Z
    .locals 2

    const-string v0, "45005"

    iget-object v1, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "45011"

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isUSAMarket()Z
    .locals 5

    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ro.csc.countryiso_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isUSAMarket : code/country_Code/countryISO_Code = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    const-string v4, "/"

    invoke-static {v2, v3, v4, v0, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "CarrierConfigForGnss"

    invoke-static {v2, v1, v3}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "TMB"

    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ATT"

    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "TFA"

    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "TFO"

    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "TFN"

    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "TFC"

    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "AIO"

    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "TMK"

    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "DSH"

    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "DSA"

    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "DSG"

    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "XAU"

    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "XAR"

    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "XAG"

    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "XAA"

    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "VZW"

    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "SPR"

    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "USC"

    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ACG"

    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "BST"

    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "VMU"

    iget-object v4, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "XAS"

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string/jumbo p0, "USA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string/jumbo p0, "US"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    const-string/jumbo v0, "isUSAMarket : "

    invoke-static {v0, v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public final isUsaVerizon()Z
    .locals 1

    const-string/jumbo v0, "VZW"

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
