.class public final synthetic Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda2;->f$0:I

    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda2;->f$0:I

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    check-cast p1, Lcom/android/server/pm/pkg/AndroidPackage;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getAutoRevokePermissions()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
