.class public final Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mPermissionInfo:Landroid/content/pm/PermissionInfo;

.field public final mType:I


# direct methods
.method public constructor <init>(Landroid/content/pm/PermissionInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iput p2, p0, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;->mType:I

    return-void
.end method
