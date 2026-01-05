.class public final Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mFlags:I

.field public final mGranted:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;->mGranted:Z

    iput p1, p0, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;->mFlags:I

    return-void
.end method
