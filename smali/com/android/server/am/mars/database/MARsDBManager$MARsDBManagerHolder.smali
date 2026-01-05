.class public abstract Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHolder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/database/MARsDBManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerSettingsObserver:Z

    iput-boolean v1, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerForcedAppStandbyObserver:Z

    iput-boolean v1, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerDefaultAllowedListObserver:Z

    iput-boolean v1, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerFreezeExcludeListObserver:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsLocalVersion:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsDBVersion:Ljava/lang/String;

    const/4 v2, 0x3

    iput v2, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mMaxFailCountForSCPM:I

    iput-boolean v1, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z

    sput-object v0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBManager;

    return-void
.end method
