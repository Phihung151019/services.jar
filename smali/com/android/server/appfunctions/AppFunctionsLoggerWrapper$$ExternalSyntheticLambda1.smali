.class public final synthetic Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:J

.field public final synthetic f$6:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;ILandroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IIJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;

    iput p2, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda1;->f$2:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    iput p4, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda1;->f$3:I

    iput p5, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda1;->f$4:I

    iput-wide p6, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda1;->f$5:J

    iput-wide p8, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda1;->f$6:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;

    iget v1, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda1;->f$2:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    iget v3, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda1;->f$3:I

    iget v4, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda1;->f$4:I

    iget-wide v5, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda1;->f$5:J

    iget-wide v7, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda1;->f$6:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getTargetPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v9, 0x0

    :try_start_0
    iget-object v0, v0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p0, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v9
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo v0, "Package uid not found for "

    const-string v10, "AppFunctionsLoggerWrapper"

    invoke-static {v0, p0, v10}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getRequestDataSize()I

    move-result p0

    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    const/16 v2, 0x3e6

    invoke-virtual {v0, v2}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v9}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v1, v1}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v5, v6}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v7, v8}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method
