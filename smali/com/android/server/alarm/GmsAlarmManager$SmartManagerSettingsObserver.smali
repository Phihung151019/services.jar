.class public final Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/GmsAlarmManager;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/GmsAlarmManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    const-string p1, "GmsAlarmManager"

    const-string/jumbo v0, "onChange - mSmartManagerSettingsObserver for GmsAlarmManger!"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->getSettingsValueFromDB()V

    return-void
.end method
