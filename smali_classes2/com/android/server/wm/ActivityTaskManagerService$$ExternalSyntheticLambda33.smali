.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/function/OctConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    move-object p0, p1

    check-cast p0, Landroid/app/ActivityManagerInternal;

    move-object p1, p2

    check-cast p1, Landroid/content/ComponentName;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    move-object p4, p5

    check-cast p4, Landroid/os/IBinder;

    move-object p5, p6

    check-cast p5, Landroid/content/ComponentName;

    move-object p6, p7

    check-cast p6, Landroid/app/assist/ActivityId;

    move-object p7, p8

    check-cast p7, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p7}, Landroid/app/ActivityManagerInternal;->updateActivityUsageStatsWithIntent(Landroid/content/ComponentName;IILandroid/os/IBinder;Landroid/content/ComponentName;Landroid/app/assist/ActivityId;Landroid/content/Intent;)V

    return-void
.end method
