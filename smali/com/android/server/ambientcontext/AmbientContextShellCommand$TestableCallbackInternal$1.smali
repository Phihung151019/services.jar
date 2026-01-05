.class public final Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;
.super Landroid/app/ambientcontext/IAmbientContextObserver$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;->this$0:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    invoke-direct {p0}, Landroid/app/ambientcontext/IAmbientContextObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvents(Ljava/util/List;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;->this$0:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Detection events available: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final onRegistrationComplete(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;->this$0:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    iput p1, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->mLastStatus:I

    return-void
.end method
