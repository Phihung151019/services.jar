.class public final Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAddDisabledComponent:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda69;

.field public final mGetPackagesLocked:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;

.field public final mSetEnabled:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda69;

.field public final mSetInstalled:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda69;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda69;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda69;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda69;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->mGetPackagesLocked:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;

    iput-object p2, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->mSetInstalled:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda69;

    iput-object p3, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->mSetEnabled:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda69;

    iput-object p4, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->mAddDisabledComponent:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda69;

    return-void
.end method
