.class public final Lcom/android/server/am/ActiveServices$SystemExemptedFgsTypePermission;
.super Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActiveServices;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/am/ActiveServices$SystemExemptedFgsTypePermission;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    iput-object p1, p0, Lcom/android/server/am/ActiveServices$SystemExemptedFgsTypePermission;->this$0:Lcom/android/server/am/ActiveServices;

    const-string/jumbo p1, "System exempted"

    invoke-direct {p0, p1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;-><init>(Ljava/lang/String;)V

    return-void

    :pswitch_0
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$SystemExemptedFgsTypePermission;->this$0:Lcom/android/server/am/ActiveServices;

    const-string/jumbo p1, "Media projection screen capture permission"

    invoke-direct {p0, p1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;-><init>(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final checkPermission(Landroid/content/Context;IILjava/lang/String;Z)I
    .locals 1

    iget p1, p0, Lcom/android/server/am/ActiveServices$SystemExemptedFgsTypePermission;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/am/ActiveServices$SystemExemptedFgsTypePermission;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService;->mMediaProjectionTokenMap:Landroid/util/SparseArray;

    monitor-enter p1

    :try_start_0
    iget-object p3, p0, Lcom/android/server/am/ActivityManagerService;->mMediaProjectionTokenMap:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p2

    const/4 p3, 0x0

    if-ltz p2, :cond_0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mMediaProjectionTokenMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    move p0, p3

    :goto_0
    monitor-exit p1

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p3, -0x1

    :goto_1
    return p3

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    iget-object p1, p0, Lcom/android/server/am/ActiveServices$SystemExemptedFgsTypePermission;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object p1, p1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {p1, p2}, Lcom/android/server/am/AppRestrictionController;->getPotentialSystemExemptionReason(I)I

    move-result p3

    const/4 p5, -0x1

    if-ne p3, p5, :cond_2

    invoke-virtual {p1, p2, p4}, Lcom/android/server/am/AppRestrictionController;->getPotentialSystemExemptionReason(ILjava/lang/String;)I

    move-result p3

    if-ne p3, p5, :cond_2

    invoke-virtual {p1, p2, p4}, Lcom/android/server/am/AppRestrictionController;->getPotentialUserAllowedExemptionReason(ILjava/lang/String;)I

    move-result p3

    :cond_2
    const/16 p1, 0x146

    const/4 p2, 0x0

    if-ne p3, p5, :cond_3

    iget-object p0, p0, Lcom/android/server/am/ActiveServices$SystemExemptedFgsTypePermission;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p3, p1

    :cond_3
    const/16 p0, 0xa

    if-eq p3, p0, :cond_4

    const/16 p0, 0xb

    if-eq p3, p0, :cond_4

    const/16 p0, 0x33

    if-eq p3, p0, :cond_4

    const/16 p0, 0x3f

    if-eq p3, p0, :cond_4

    const/16 p0, 0x41

    if-eq p3, p0, :cond_4

    const/16 p0, 0x12c

    if-eq p3, p0, :cond_4

    const/16 p0, 0x37

    if-eq p3, p0, :cond_4

    const/16 p0, 0x38

    if-eq p3, p0, :cond_4

    if-eq p3, p1, :cond_4

    const/16 p0, 0x147

    if-eq p3, p0, :cond_4

    packed-switch p3, :pswitch_data_1

    goto :goto_3

    :cond_4
    :pswitch_1
    move p5, p2

    :goto_3
    return p5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13f
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
