.class public abstract Lcom/android/server/pm/ApexManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final sApexManagerSingleton:Lcom/android/server/pm/ApexManager$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/ApexManager$1;

    invoke-direct {v0}, Landroid/util/Singleton;-><init>()V

    sput-object v0, Lcom/android/server/pm/ApexManager;->sApexManagerSingleton:Lcom/android/server/pm/ApexManager$1;

    return-void
.end method

.method public static getInstance()Lcom/android/server/pm/ApexManager;
    .locals 1

    sget-object v0, Lcom/android/server/pm/ApexManager;->sApexManagerSingleton:Lcom/android/server/pm/ApexManager$1;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ApexManager;

    return-object v0
.end method


# virtual methods
.method public abstract getActiveApexInfos()Ljava/util/List;
.end method

.method public abstract getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getActivePackageNameForApexModuleName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getApexModuleNameForPackageName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getApksInApex(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBackingApexFile(Ljava/io/File;)Ljava/io/File;
.end method

.method public abstract markStagedSessionSuccessful(I)V
.end method

.method public abstract registerApkInApex(Lcom/android/server/pm/pkg/AndroidPackage;)V
.end method

.method public abstract revertActiveSessions()Z
.end method

.method public abstract submitStagedSession(Landroid/apex/ApexSessionParams;)Landroid/apex/ApexInfoList;
.end method
