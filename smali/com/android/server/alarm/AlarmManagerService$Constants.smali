.class final Lcom/android/server/alarm/AlarmManagerService$Constants;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# static fields
.field static final KEY_ALLOW_WHILE_IDLE_COMPAT_QUOTA:Ljava/lang/String; = "allow_while_idle_compat_quota"

.field static final KEY_ALLOW_WHILE_IDLE_COMPAT_WINDOW:Ljava/lang/String; = "allow_while_idle_compat_window"

.field static final KEY_ALLOW_WHILE_IDLE_QUOTA:Ljava/lang/String; = "allow_while_idle_quota"

.field static final KEY_ALLOW_WHILE_IDLE_WHITELIST_DURATION:Ljava/lang/String; = "allow_while_idle_whitelist_duration"

.field static final KEY_ALLOW_WHILE_IDLE_WINDOW:Ljava/lang/String; = "allow_while_idle_window"

.field static final KEY_CACHED_LISTENER_REMOVAL_DELAY:Ljava/lang/String; = "cached_listener_removal_delay"

.field static final KEY_LISTENER_TIMEOUT:Ljava/lang/String; = "listener_timeout"

.field static final KEY_MAX_ALARMS_PER_UID:Ljava/lang/String; = "max_alarms_per_uid"

.field static final KEY_MAX_DEVICE_IDLE_FUZZ:Ljava/lang/String; = "max_device_idle_fuzz"

.field static final KEY_MAX_INTERVAL:Ljava/lang/String; = "max_interval"

.field static final KEY_MIN_DEVICE_IDLE_FUZZ:Ljava/lang/String; = "min_device_idle_fuzz"

.field static final KEY_MIN_FUTURITY:Ljava/lang/String; = "min_futurity"

.field static final KEY_MIN_INTERVAL:Ljava/lang/String; = "min_interval"

.field static final KEY_MIN_WINDOW:Ljava/lang/String; = "min_window"

.field static final KEY_PRIORITY_ALARM_DELAY:Ljava/lang/String; = "priority_alarm_delay"

.field static final KEY_TEMPORARY_QUOTA_BUMP:Ljava/lang/String; = "temporary_quota_bump"


# instance fields
.field public ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

.field public ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

.field public ALLOW_WHILE_IDLE_QUOTA:I

.field public ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

.field public ALLOW_WHILE_IDLE_WINDOW:J

.field public final APP_STANDBY_QUOTAS:[I

.field public APP_STANDBY_RESTRICTED_QUOTA:I

.field public APP_STANDBY_RESTRICTED_WINDOW:J

.field public APP_STANDBY_WINDOW:J

.field public CACHED_LISTENER_REMOVAL_DELAY:J

.field public final DEFAULT_APP_STANDBY_QUOTAS:[I

.field public DELAY_NONWAKEUP_ALARMS_WHILE_SCREEN_OFF:Z

.field final KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

.field public LISTENER_TIMEOUT:J

.field public MAX_ALARMS_PER_UID:I

.field public MAX_DEVICE_IDLE_FUZZ:J

.field public MAX_INTERVAL:J

.field public MIN_DEVICE_IDLE_FUZZ:J

.field public MIN_FUTURITY:J

.field public MIN_INTERVAL:J

.field public MIN_WINDOW:J

.field public PRIORITY_ALARM_DELAY:J

.field public TEMPORARY_QUOTA_BUMP:I

.field public TIME_TICK_ALLOWED_WHILE_IDLE:Z

.field public mLastAllowWhileIdleWhitelistDuration:J

.field public mVersion:I

.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    const-string/jumbo p1, "standby_quota_working"

    const-string/jumbo v0, "standby_quota_frequent"

    const-string/jumbo v1, "standby_quota_active"

    const-string/jumbo v2, "standby_quota_rare"

    const-string/jumbo v3, "standby_quota_never"

    filled-new-array {v1, p1, v0, v2, v3}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    const/16 p1, 0x2d0

    const/16 v0, 0xa

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    filled-new-array {p1, v0, v1, v2, v3}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DEFAULT_APP_STANDBY_QUOTAS:[I

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_FUTURITY:J

    const-wide/32 v4, 0xea60

    iput-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_INTERVAL:J

    const-wide v4, 0x757b12c00L

    iput-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    const-wide/32 v4, 0x927c0

    iput-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_WINDOW:J

    const-wide/16 v4, 0x2710

    iput-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    const/16 p1, 0x1f4

    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    const/4 p1, 0x5

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    iput v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_QUOTA:I

    const-wide/32 v6, 0x5265c00

    iput-wide v6, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_WINDOW:J

    iput-boolean v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->TIME_TICK_ALLOWED_WHILE_IDLE:Z

    const/16 p1, 0x48

    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    const/4 p1, 0x7

    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    const-wide/32 v0, 0x83d60

    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->PRIORITY_ALARM_DELAY:J

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_DEVICE_IDLE_FUZZ:J

    iput v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->TEMPORARY_QUOTA_BUMP:I

    iput-boolean v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DELAY_NONWAKEUP_ALARMS_WHILE_SCREEN_OFF:Z

    iput-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->CACHED_LISTENER_REMOVAL_DELAY:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mLastAllowWhileIdleWhitelistDuration:J

    iput v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mVersion:I

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->updateAllowWhileIdleWhitelistDurationLocked()V

    :goto_0
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    array-length v0, p1

    if-ge v3, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DEFAULT_APP_STANDBY_QUOTAS:[I

    aget v0, v0, v3

    aput v0, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 4

    const-string/jumbo v0, "Settings:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "version"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "min_futurity"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_FUTURITY:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "min_interval"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_INTERVAL:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "max_interval"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "min_window"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_WINDOW:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "listener_timeout"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "allow_while_idle_quota"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "allow_while_idle_window"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "allow_while_idle_compat_quota"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "allow_while_idle_compat_window"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "allow_while_idle_whitelist_duration"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "max_alarms_per_uid"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "app_standby_window"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_QUOTA:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "standby_quota_restricted"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "app_standby_restricted_window"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_WINDOW:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-boolean v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->TIME_TICK_ALLOWED_WHILE_IDLE:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "time_tick_allowed_while_idle"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "priority_alarm_delay"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->PRIORITY_ALARM_DELAY:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "min_device_idle_fuzz"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "max_device_idle_fuzz"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_DEVICE_IDLE_FUZZ:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->TEMPORARY_QUOTA_BUMP:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "temporary_quota_bump"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-boolean v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DELAY_NONWAKEUP_ALARMS_WHILE_SCREEN_OFF:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "delay_nonwakeup_alarms_while_screen_off"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "cached_listener_removal_delay"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->CACHED_LISTENER_REMOVAL_DELAY:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 15

    move-object/from16 v1, p1

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mVersion:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mVersion:I

    invoke-virtual {v1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string/jumbo v9, "delay_nonwakeup_alarms_while_screen_off"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x12

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :sswitch_1
    const-string/jumbo v9, "min_interval"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v9, v4

    goto/16 :goto_2

    :sswitch_2
    const-string/jumbo v9, "allow_while_idle_compat_quota"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x5

    goto/16 :goto_2

    :sswitch_3
    const-string/jumbo v9, "max_interval"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x2

    goto/16 :goto_2

    :sswitch_4
    const-string/jumbo v9, "time_tick_allowed_while_idle"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0xd

    goto/16 :goto_2

    :sswitch_5
    const-string/jumbo v9, "allow_while_idle_whitelist_duration"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x8

    goto/16 :goto_2

    :sswitch_6
    const-string/jumbo v9, "listener_timeout"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x9

    goto/16 :goto_2

    :sswitch_7
    const-string/jumbo v9, "app_standby_window"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0xb

    goto/16 :goto_2

    :sswitch_8
    const-string/jumbo v9, "min_window"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x4

    goto/16 :goto_2

    :sswitch_9
    const-string/jumbo v9, "max_device_idle_fuzz"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x10

    goto/16 :goto_2

    :sswitch_a
    const-string/jumbo v9, "allow_while_idle_window"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x6

    goto/16 :goto_2

    :sswitch_b
    const-string/jumbo v9, "allow_while_idle_quota"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x3

    goto :goto_2

    :sswitch_c
    const-string/jumbo v9, "temporary_quota_bump"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x11

    goto :goto_2

    :sswitch_d
    const-string/jumbo v9, "priority_alarm_delay"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0xe

    goto :goto_2

    :sswitch_e
    const-string/jumbo v9, "app_standby_restricted_window"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0xc

    goto :goto_2

    :sswitch_f
    const-string/jumbo v9, "max_alarms_per_uid"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0xa

    goto :goto_2

    :sswitch_10
    const-string/jumbo v9, "cached_listener_removal_delay"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x13

    goto :goto_2

    :sswitch_11
    const-string/jumbo v9, "min_futurity"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v9, v5

    goto :goto_2

    :sswitch_12
    const-string/jumbo v9, "min_device_idle_fuzz"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0xf

    goto :goto_2

    :sswitch_13
    const-string/jumbo v9, "allow_while_idle_compat_window"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x7

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v9, -0x1

    :goto_2
    const-wide/16 v12, 0x2710

    const-wide/32 v10, 0x36ee80

    packed-switch v9, :pswitch_data_0

    const-string/jumbo v9, "standby_quota_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->updateStandbyQuotasLocked()V

    move v7, v4

    goto/16 :goto_0

    :pswitch_0
    const-string/jumbo v8, "cached_listener_removal_delay"

    invoke-virtual {v1, v8, v12, v13}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->CACHED_LISTENER_REMOVAL_DELAY:J

    goto/16 :goto_0

    :pswitch_1
    const-string/jumbo v8, "delay_nonwakeup_alarms_while_screen_off"

    invoke-virtual {v1, v8, v4}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DELAY_NONWAKEUP_ALARMS_WHILE_SCREEN_OFF:Z

    goto/16 :goto_0

    :pswitch_2
    const-string/jumbo v8, "temporary_quota_bump"

    invoke-virtual {v1, v8, v5}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->TEMPORARY_QUOTA_BUMP:I

    goto/16 :goto_0

    :pswitch_3
    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->updateDeviceIdleFuzzBoundaries()V

    move v6, v4

    goto/16 :goto_0

    :pswitch_4
    const-string/jumbo v8, "priority_alarm_delay"

    const-wide/32 v9, 0x83d60

    invoke-virtual {v1, v8, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->PRIORITY_ALARM_DELAY:J

    goto/16 :goto_0

    :pswitch_5
    const-string/jumbo v8, "time_tick_allowed_while_idle"

    invoke-virtual {v1, v8, v4}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->TIME_TICK_ALLOWED_WHILE_IDLE:Z

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->updateStandbyWindowsLocked()V

    goto/16 :goto_0

    :pswitch_7
    const-string/jumbo v8, "max_alarms_per_uid"

    const/16 v9, 0x1f4

    invoke-virtual {v1, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    if-ge v8, v9, :cond_0

    const-string v8, "AlarmManager"

    const-string v10, "Cannot set max_alarms_per_uid lower than 500"

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v9, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    goto/16 :goto_0

    :pswitch_8
    const-string/jumbo v8, "listener_timeout"

    const-wide/16 v9, 0x1388

    invoke-virtual {v1, v8, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    goto/16 :goto_0

    :pswitch_9
    const-string/jumbo v8, "allow_while_idle_whitelist_duration"

    invoke-virtual {v1, v8, v12, v13}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->updateAllowWhileIdleWhitelistDurationLocked()V

    goto/16 :goto_0

    :pswitch_a
    const-string/jumbo v8, "allow_while_idle_compat_window"

    invoke-virtual {v1, v8, v10, v11}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    const-string v8, "AlarmManager"

    const-string v9, "Cannot have allow_while_idle_compat_window > 3600000"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v10, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    goto/16 :goto_0

    :cond_3
    if-eqz v8, :cond_0

    const-string v8, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Using a non-default allow_while_idle_compat_window = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_b
    const-string/jumbo v8, "allow_while_idle_window"

    invoke-virtual {v1, v8, v10, v11}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    const-string v8, "AlarmManager"

    const-string v9, "Cannot have allow_while_idle_window > 3600000"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v10, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    goto/16 :goto_0

    :cond_4
    if-eqz v8, :cond_0

    const-string v8, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Using a non-default allow_while_idle_window = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_c
    const-string/jumbo v8, "allow_while_idle_compat_quota"

    const/4 v14, 0x7

    invoke-virtual {v1, v8, v14}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    if-gtz v8, :cond_0

    const-string v8, "AlarmManager"

    const-string/jumbo v9, "Must have positive allow_while_idle_compat quota"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    goto/16 :goto_0

    :pswitch_d
    const-string/jumbo v8, "min_window"

    const-wide/32 v9, 0x927c0

    invoke-virtual {v1, v8, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_WINDOW:J

    goto/16 :goto_0

    :pswitch_e
    const-string/jumbo v8, "allow_while_idle_quota"

    const/16 v9, 0x48

    invoke-virtual {v1, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    if-gtz v8, :cond_0

    const-string v8, "AlarmManager"

    const-string/jumbo v9, "Must have positive allow_while_idle quota"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    goto/16 :goto_0

    :pswitch_f
    const-string/jumbo v8, "max_interval"

    const-wide v9, 0x757b12c00L

    invoke-virtual {v1, v8, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    goto/16 :goto_0

    :pswitch_10
    const-string/jumbo v8, "min_interval"

    const-wide/32 v9, 0xea60

    invoke-virtual {v1, v8, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_INTERVAL:J

    goto/16 :goto_0

    :pswitch_11
    const-string/jumbo v8, "min_futurity"

    const-wide/16 v9, 0x1388

    invoke-virtual {v1, v8, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_FUTURITY:J

    goto/16 :goto_0

    :cond_5
    monitor-exit v2

    return-void

    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x5e0379da -> :sswitch_13
        -0x58de0e82 -> :sswitch_12
        -0x4d123227 -> :sswitch_11
        -0x4a94a91e -> :sswitch_10
        -0x3a284894 -> :sswitch_f
        -0x3481955c -> :sswitch_e
        -0x24dca806 -> :sswitch_d
        -0x23417eb5 -> :sswitch_c
        -0x226d61af -> :sswitch_b
        -0x21ab88c9 -> :sswitch_a
        -0x187e4754 -> :sswitch_9
        -0x176c2d83 -> :sswitch_8
        -0x8c8f860 -> :sswitch_7
        0x3795c4d6 -> :sswitch_6
        0x43f28753 -> :sswitch_5
        0x48578d89 -> :sswitch_4
        0x5b1d4140 -> :sswitch_3
        0x70457582 -> :sswitch_2
        0x77646c12 -> :sswitch_1
        0x7d295c98 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateAllowWhileIdleWhitelistDurationLocked()V
    .locals 8

    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mLastAllowWhileIdleWhitelistDuration:J

    iget-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mLastAllowWhileIdleWhitelistDuration:J

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgs:Landroid/app/BroadcastOptions;

    const/16 v6, 0x12e

    const-string v7, ""

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgsForAlarmClock:Landroid/app/BroadcastOptions;

    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    const/16 v5, 0x12d

    const-string v6, ""

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithoutFgs:Landroid/app/BroadcastOptions;

    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    const/4 v5, -0x1

    const-string v6, ""

    const/4 v4, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final updateDeviceIdleFuzzBoundaries()V
    .locals 5

    const-string/jumbo v0, "min_device_idle_fuzz"

    const-string/jumbo v1, "max_device_idle_fuzz"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "alarm_manager"

    invoke-static {v3, v2}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v2

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v2, v0, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    const-wide/32 v3, 0xdbba0

    invoke-virtual {v2, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_DEVICE_IDLE_FUZZ:J

    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "max_device_idle_fuzz cannot be smaller than min_device_idle_fuzz! Increasing to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_DEVICE_IDLE_FUZZ:J

    :cond_0
    return-void
.end method

.method public final updateStandbyQuotasLocked()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    const-string/jumbo v1, "alarm_manager"

    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DEFAULT_APP_STANDBY_QUOTAS:[I

    aget v5, v5, v4

    invoke-virtual {v0, v3, v5}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v4

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_0

    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    aget-object v4, v4, v3

    add-int/lit8 v6, v3, -0x1

    aget v6, v5, v6

    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DEFAULT_APP_STANDBY_QUOTAS:[I

    aget v7, v7, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "standby_quota_restricted"

    invoke-static {v1, v0, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_QUOTA:I

    return-void
.end method

.method public final updateStandbyWindowsLocked()V
    .locals 8

    const-string/jumbo v0, "app_standby_window"

    const-string/jumbo v1, "app_standby_restricted_window"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "alarm_manager"

    invoke-static {v3, v2}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v2

    const-wide/32 v3, 0x36ee80

    invoke-virtual {v2, v0, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    cmp-long v0, v5, v3

    const-string v7, "AlarmManager"

    if-lez v0, :cond_0

    const-string v0, "Cannot exceed the app_standby_window size of 3600000"

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    goto :goto_0

    :cond_0
    cmp-long v0, v5, v3

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Using a non-default app_standby_window of "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    const-wide/32 v5, 0x5265c00

    invoke-virtual {v2, v1, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_WINDOW:J

    return-void
.end method
