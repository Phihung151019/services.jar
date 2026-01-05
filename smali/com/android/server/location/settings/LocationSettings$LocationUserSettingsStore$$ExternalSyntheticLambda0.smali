.class public final synthetic Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;

.field public final synthetic f$1:Lcom/android/server/location/settings/LocationUserSettings;

.field public final synthetic f$2:Lcom/android/server/location/settings/LocationUserSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;Lcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;

    iput-object p2, p0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/location/settings/LocationUserSettings;

    iput-object p3, p0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/location/settings/LocationUserSettings;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;

    iget-object v1, p0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/location/settings/LocationUserSettings;

    iget-object p0, p0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/location/settings/LocationUserSettings;

    iget-object v2, v0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;->this$0:Lcom/android/server/location/settings/LocationSettings;

    iget-object v2, v2, Lcom/android/server/location/settings/LocationSettings;->mUserSettingsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;

    iget v4, v0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;->mUserId:I

    invoke-interface {v3, v4, v1, p0}, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;->onLocationUserSettingsChanged(ILcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V

    goto :goto_0

    :cond_0
    return-void
.end method
