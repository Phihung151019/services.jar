.class public final Lcom/android/server/power/ShutdownThread$3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field public final synthetic val$message:Ljava/lang/CharSequence;

.field public final synthetic val$progress:I


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$3;->this$0:Lcom/android/server/power/ShutdownThread;

    iput p2, p0, Lcom/android/server/power/ShutdownThread$3;->val$progress:I

    iput-object p3, p0, Lcom/android/server/power/ShutdownThread$3;->val$message:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$3;->this$0:Lcom/android/server/power/ShutdownThread;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/server/power/ShutdownThread$3;->val$progress:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$3;->val$message:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/power/ShutdownThread$3;->this$0:Lcom/android/server/power/ShutdownThread;

    iget-object p0, p0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
