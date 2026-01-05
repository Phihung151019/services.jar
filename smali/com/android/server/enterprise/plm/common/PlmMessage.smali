.class public final Lcom/android/server/enterprise/plm/common/PlmMessage;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public obj1:Ljava/lang/Object;

.field public obj2:Ljava/lang/Object;

.field public obj3:Ljava/lang/Object;

.field public obj4:Ljava/lang/Object;


# direct methods
.method public static obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    new-instance v0, Lcom/android/server/enterprise/plm/common/PlmMessage;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p2, v0, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object p0

    iput p1, p0, Landroid/os/Message;->what:I

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object p0
.end method

.method public static obtain(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 1

    new-instance v0, Lcom/android/server/enterprise/plm/common/PlmMessage;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p2, v0, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj2:Ljava/lang/Object;

    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object p0

    iput p1, p0, Landroid/os/Message;->what:I

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object p0
.end method
