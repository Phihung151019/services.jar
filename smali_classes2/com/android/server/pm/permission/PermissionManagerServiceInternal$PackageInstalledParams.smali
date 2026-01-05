.class public final Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEFAULT:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;


# instance fields
.field public final mAllowlistedRestrictedPermissions:Ljava/util/List;

.field public final mAutoRevokePermissionsMode:I

.field public final mPermissionStates:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    const/4 v3, 0x3

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;-><init>(Landroid/util/ArrayMap;Ljava/util/List;I)V

    sput-object v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->DEFAULT:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    return-void
.end method

.method public constructor <init>(Landroid/util/ArrayMap;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->mPermissionStates:Landroid/util/ArrayMap;

    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    iput p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->mAutoRevokePermissionsMode:I

    return-void
.end method
