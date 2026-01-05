.class public final synthetic Lcom/android/server/appfunctions/AppFunctionLoggerHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appfunctions/AppFunctionLoggerHelper;

.field public final synthetic f$1:Landroid/app/appfunctions/AppFunctionExecutionRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appfunctions/AppFunctionLoggerHelper;Landroid/app/appfunctions/AppFunctionExecutionRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionLoggerHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appfunctions/AppFunctionLoggerHelper;

    iput-object p2, p0, Lcom/android/server/appfunctions/AppFunctionLoggerHelper$$ExternalSyntheticLambda0;->f$1:Landroid/app/appfunctions/AppFunctionExecutionRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionLoggerHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appfunctions/AppFunctionLoggerHelper;

    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionLoggerHelper$$ExternalSyntheticLambda0;->f$1:Landroid/app/appfunctions/AppFunctionExecutionRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "tracking_id"

    const-string v3, "4AD-399-995651"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    const-string v3, "CRRA001"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "ev"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "pkg_name"

    const-string/jumbo v3, "com.android.server.appfunctions"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;->getDimensionMap(Landroid/app/appfunctions/AppFunctionExecutionRecord;)Ljava/util/HashMap;

    move-result-object p0

    const-string/jumbo v2, "dimension"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.android.diagmonagent"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "AppFunctionLoggerHelper"

    const-string/jumbo v1, "sendSamsungAnalyticsLog"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
