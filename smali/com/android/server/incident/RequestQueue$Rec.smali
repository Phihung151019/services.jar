.class public final Lcom/android/server/incident/RequestQueue$Rec;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final key:Landroid/os/IBinder;

.field public final runnable:Ljava/lang/Runnable;

.field public final value:Z


# direct methods
.method public constructor <init>(Landroid/os/IBinder;ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/incident/RequestQueue$Rec;->key:Landroid/os/IBinder;

    iput-boolean p2, p0, Lcom/android/server/incident/RequestQueue$Rec;->value:Z

    iput-object p3, p0, Lcom/android/server/incident/RequestQueue$Rec;->runnable:Ljava/lang/Runnable;

    return-void
.end method
