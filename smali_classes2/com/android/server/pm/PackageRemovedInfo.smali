.class public final Lcom/android/server/pm/PackageRemovedInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final EMPTY_INT_ARRAY:[I


# instance fields
.field public mArgs:Lcom/android/server/pm/CleanUpArgs;

.field public mBroadcastAllowList:Landroid/util/SparseArray;

.field public mBroadcastUsers:[I

.field public mDataRemoved:Z

.field public mInstallReasons:Landroid/util/SparseIntArray;

.field public mInstallerPackageName:Ljava/lang/String;

.field public mInstantUserIds:[I

.field public mIsAppIdRemoved:Z

.field public mIsExternal:Z

.field public mIsRemovedPackageSystemUpdate:Z

.field public mIsStaticSharedLib:Z

.field public mIsUpdate:Z

.field public mOrigUsers:[I

.field public mRemovedForAllUsers:Z

.field public mRemovedPackage:Ljava/lang/String;

.field public mRemovedPackageVersionCode:J

.field public mRemovedUsers:[I

.field public mUid:I

.field public mUninstallReasons:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/PackageRemovedInfo;->EMPTY_INT_ARRAY:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mIsAppIdRemoved:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    iput-object v1, p0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    iput-object v1, p0, Lcom/android/server/pm/PackageRemovedInfo;->mInstantUserIds:[I

    iput-boolean v0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mIsRemovedPackageSystemUpdate:Z

    iput-object v1, p0, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    return-void
.end method
