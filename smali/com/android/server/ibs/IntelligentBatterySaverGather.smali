.class public final Lcom/android/server/ibs/IntelligentBatterySaverGather;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDisplayListener:Lcom/android/server/ibs/IntelligentBatterySaverGather$1;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mFilter:Landroid/content/IntentFilter;

.field public final mIBSService:Lcom/android/server/ibs/IntelligentBatterySaverService;

.field public mReceiver:Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ibs/IntelligentBatterySaverService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverGather$1;

    invoke-direct {v0, p0}, Lcom/android/server/ibs/IntelligentBatterySaverGather$1;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverGather;)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mDisplayListener:Lcom/android/server/ibs/IntelligentBatterySaverGather$1;

    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mIBSService:Lcom/android/server/ibs/IntelligentBatterySaverService;

    return-void
.end method
