.class public final synthetic Lcom/android/server/location/nsflp/NSLocationMonitor$4$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/location/nsflp/NSLocationMonitor$4;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/nsflp/NSLocationMonitor$4;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/nsflp/NSLocationMonitor$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/nsflp/NSLocationMonitor$4;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/android/server/location/nsflp/NSLocationMonitor$4;->$r8$lambda$UqTBjMb3xqJQs7mYPjsLobcSlD8(Lcom/android/server/location/nsflp/NSLocationMonitor$4;)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "NSLocationMonitor"

    const-string/jumbo v1, "onListenerDisconnected for NotificationListener"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    iget-object v0, v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mForegroundNotificationList:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object v0, Landroid/location/LocationConstants$STATE_TYPE;->NOTIFICATION_LISTENER_DISCONNECTED:Landroid/location/LocationConstants$STATE_TYPE;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
