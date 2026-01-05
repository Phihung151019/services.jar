.class public final synthetic Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ProcessLoggingHandler;

.field public final synthetic f$1:Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ProcessLoggingHandler;Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/ProcessLoggingHandler;

    iput-object p2, p0, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/ProcessLoggingHandler;

    iget-object p0, p0, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/pm/ProcessLoggingHandler;->processChecksum(Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;[B)V

    return-void
.end method
