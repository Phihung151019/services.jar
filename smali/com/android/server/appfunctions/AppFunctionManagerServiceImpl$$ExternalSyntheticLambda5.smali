.class public final synthetic Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appfunctions/AppFunctionLoggerHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appfunctions/AppFunctionLoggerHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/appfunctions/AppFunctionLoggerHelper;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/appfunctions/AppFunctionLoggerHelper;

    check-cast p1, Landroid/app/appfunctions/AppFunctionExecutionRecord;

    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;->mAppFunctionExecutionHistory:[Landroid/app/appfunctions/AppFunctionExecutionRecord;

    iget v1, p0, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;->mAppFunctionExecutionHistoryIdx:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;->mAppFunctionExecutionHistoryIdx:I

    sget-boolean v0, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;->SA_LOG_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/appfunctions/AppFunctionLoggerHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/appfunctions/AppFunctionLoggerHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appfunctions/AppFunctionLoggerHelper;Landroid/app/appfunctions/AppFunctionExecutionRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
