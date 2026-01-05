.class public final synthetic Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/DeviceIdleController;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/DeviceIdleController;III)V
    .locals 0

    iput p4, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/DeviceIdleController;

    iput p2, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$1:I

    iput p3, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget v0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/DeviceIdleController;

    iget v1, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$1:I

    iget p0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$2:I

    check-cast p1, Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, p1, v2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/DeviceIdleController;

    iget v1, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$1:I

    iget p0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$2:I

    check-cast p1, Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, p1, v2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/DeviceIdleController;

    iget v1, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$1:I

    iget p0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$2:I

    check-cast p1, Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, p1, v2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/DeviceIdleController;

    iget v1, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$1:I

    iget p0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$2:I

    check-cast p1, Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, p1, v2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/DeviceIdleController;

    iget v1, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$1:I

    iget p0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$2:I

    check-cast p1, Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, p1, v2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/DeviceIdleController;

    iget v1, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$1:I

    iget p0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;->f$2:I

    check-cast p1, Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, p1, v2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
