.class public final Lcom/android/server/pm/AutoDisableHandler;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAutoDisableHandler:Lcom/android/server/pm/AutoDisableHandler$ADHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;

    invoke-direct {v0, p0}, Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;-><init>(Lcom/android/server/pm/AutoDisableHandler;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
