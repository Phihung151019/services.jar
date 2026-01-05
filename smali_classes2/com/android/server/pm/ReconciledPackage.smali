.class public final Lcom/android/server/pm/ReconciledPackage;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAllPackages:Ljava/util/Map;

.field public final mAllowedSharedLibraryInfos:Ljava/util/List;

.field public mCollectedSharedLibraryInfos:Ljava/util/ArrayList;

.field public final mDeletePackageAction:Lcom/android/server/pm/DeletePackageAction;

.field public final mInstallRequest:Lcom/android/server/pm/InstallRequest;

.field public final mInstallRequests:Ljava/util/List;

.field public final mRemoveAppKeySetData:Z

.field public final mSharedUserSignaturesChanged:Z

.field public final mSigningDetails:Landroid/content/pm/SigningDetails;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Map;Lcom/android/server/pm/InstallRequest;Lcom/android/server/pm/DeletePackageAction;Ljava/util/List;Landroid/content/pm/SigningDetails;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ReconciledPackage;->mInstallRequests:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/pm/ReconciledPackage;->mAllPackages:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    iput-object p4, p0, Lcom/android/server/pm/ReconciledPackage;->mDeletePackageAction:Lcom/android/server/pm/DeletePackageAction;

    iput-object p5, p0, Lcom/android/server/pm/ReconciledPackage;->mAllowedSharedLibraryInfos:Ljava/util/List;

    iput-object p6, p0, Lcom/android/server/pm/ReconciledPackage;->mSigningDetails:Landroid/content/pm/SigningDetails;

    iput-boolean p7, p0, Lcom/android/server/pm/ReconciledPackage;->mSharedUserSignaturesChanged:Z

    iput-boolean p8, p0, Lcom/android/server/pm/ReconciledPackage;->mRemoveAppKeySetData:Z

    return-void
.end method
