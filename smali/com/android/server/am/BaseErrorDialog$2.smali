.class public final Lcom/android/server/am/BaseErrorDialog$2;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BaseErrorDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BaseErrorDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/BaseErrorDialog$2;->this$0:Lcom/android/server/am/BaseErrorDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/server/am/BaseErrorDialog$2;->this$0:Lcom/android/server/am/BaseErrorDialog;

    if-nez p1, :cond_0

    iput-boolean v1, p0, Lcom/android/server/am/BaseErrorDialog;->mConsuming:Z

    invoke-static {p0, v0}, Lcom/android/server/am/BaseErrorDialog;->-$$Nest$msetEnabled(Lcom/android/server/am/BaseErrorDialog;Z)V

    return-void

    :cond_0
    if-ne p1, v0, :cond_1

    invoke-static {p0, v1}, Lcom/android/server/am/BaseErrorDialog;->-$$Nest$msetEnabled(Lcom/android/server/am/BaseErrorDialog;Z)V

    :cond_1
    return-void
.end method
