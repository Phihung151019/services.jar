.class public final Lcom/android/server/am/AppErrorDialog$1;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppErrorDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppErrorDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 0

    iget p1, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppErrorDialog;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->dismiss()V

    return-void
.end method
