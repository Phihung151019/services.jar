.class public abstract Lcom/android/server/am/PDSController$PDSControllerHolder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/PDSController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/PDSController;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/PDSController;->mIsPDSEnable:Z

    iput-boolean v1, v0, Lcom/android/server/am/PDSController;->mScreenOn:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/PDSController;->mPDSTargetlist:Ljava/util/List;

    new-instance v1, Lcom/android/server/am/pds/PDSPkgMap;

    invoke-direct {v1}, Lcom/android/server/am/pds/PDSPkgMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/PDSController;->mPDSTargetPackages:Lcom/android/server/am/pds/PDSPkgMap;

    new-instance v1, Lcom/android/server/am/pds/PDSPkgMap;

    invoke-direct {v1}, Lcom/android/server/am/pds/PDSPkgMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/PDSController;->mPDSRestrictedPackages:Lcom/android/server/am/pds/PDSPkgMap;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/PDSController;->udsPolicy:Lcom/android/server/am/PDSController$Policy;

    iput-object v1, v0, Lcom/android/server/am/PDSController;->mpsmPolicy:Lcom/android/server/am/PDSController$Policy;

    sput-object v0, Lcom/android/server/am/PDSController$PDSControllerHolder;->INSTANCE:Lcom/android/server/am/PDSController;

    return-void
.end method
