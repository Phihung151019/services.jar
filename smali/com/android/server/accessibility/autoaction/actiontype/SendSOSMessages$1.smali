.class public final Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;

    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "send_emergency_message_power_number"

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;

    iget p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;->mUserId:I

    const/4 v2, 0x5

    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    new-instance v1, Landroid/app/Instrumentation;

    invoke-direct {v1}, Landroid/app/Instrumentation;-><init>()V

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo v0, "SendSOSMessages"

    const-string v1, "Exception!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
