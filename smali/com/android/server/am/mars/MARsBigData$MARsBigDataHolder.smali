.class public abstract Lcom/android/server/am/mars/MARsBigData$MARsBigDataHolder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/MARsBigData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/mars/MARsBigData;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/mars/MARsBigData;->mHQM:Landroid/os/SemHqmManager;

    iput-object v1, v0, Lcom/android/server/am/mars/MARsBigData;->PLEVdata:Ljava/lang/String;

    new-instance v1, Lcom/android/server/am/mars/MARsBigData$1;

    invoke-direct {v1, v0}, Lcom/android/server/am/mars/MARsBigData$1;-><init>(Lcom/android/server/am/mars/MARsBigData;)V

    iput-object v1, v0, Lcom/android/server/am/mars/MARsBigData;->mIntentReceiver:Lcom/android/server/am/mars/MARsBigData$1;

    sput-object v0, Lcom/android/server/am/mars/MARsBigData$MARsBigDataHolder;->INSTANCE:Lcom/android/server/am/mars/MARsBigData;

    return-void
.end method
