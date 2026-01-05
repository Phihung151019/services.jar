.class public final Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final ALARM_CONTENT_URI:Landroid/net/Uri;

.field public static final mRuglarUpdateCheckTime:Ljava/time/LocalTime;


# instance fields
.field public mAlarmChangedObserver:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$AlarmChangedObserver;

.field public mContext:Landroid/content/Context;

.field public mDeliveredHandler:Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;

.field public mDeviceTimeChangedReceiver:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;

.field public mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;

.field public mIsEndCalled:Z

.field public mIsTodaySleepChargingFinished:Z

.field public mIsUserDismissSleepCharging:Z

.field public mNextAlarmDateTimeWithinSleepTime:Ljava/time/LocalDateTime;

.field public mPersonalPatternManager:Lcom/android/server/battery/sleepcharging/PersonalPatternManager;

.field public mSavedMinutesToFullCharge:I

.field public mScheduledSleepChargingEndTime:Ljava/time/LocalDateTime;

.field public mScheduledSleepChargingStartTime:Ljava/time/LocalDateTime;

.field public mScheduledUpdateTime:Ljava/time/LocalDateTime;

.field public mScheduledWakeupTime:Ljava/time/LocalDateTime;

.field public mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

.field public mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

.field public mSleepPatterns:Ljava/util/Map;

.field public mTimeReachedReceiver:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;


# direct methods
.method public static -$$Nest$mgetNextAlarmDateTimeWithinSleepTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Ljava/time/LocalDateTime;
    .locals 12

    const-string/jumbo v1, "[SS]SleepChargingTimeController"

    const-string/jumbo v0, "[getNextAlarmDateTimeWithinSleepTime]fail - activeColumnIndex:"

    const-string/jumbo v2, "[getNextAlarmDateTimeWithinSleepTime]rowCount:"

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->ALARM_CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_0

    :try_start_1
    const-string/jumbo p0, "[getNextAlarmDateTimeWithinSleepTime]cursor null"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_c

    :goto_0
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :cond_0
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,columnCount:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "active"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v5, "alerttime"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v2, v6, :cond_a

    if-ne v5, v6, :cond_1

    goto/16 :goto_3

    :cond_1
    move-object v0, v3

    :cond_2
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_6

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    if-eq v6, v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v8, v9}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v7

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[getNextAlarmDateTimeWithinSleepTime]activeStatus:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ,timeStamp:"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ,nextAlarmDateTime:"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "[getNextAlarmDateTimeWithinSleepTime]skip past alarm"

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v7, v0}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_5
    move-object v0, v7

    goto :goto_1

    :cond_6
    if-nez v0, :cond_7

    const-string/jumbo p0, "[getNextAlarmDateTimeWithinSleepTime]No nextEarliestAlarmDateTime found"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[getNextAlarmDateTimeWithinSleepTime]nextEarliestAlarmDateTime:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    iget-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->sleepChargingStartDateTime:Ljava/time/LocalDateTime;

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->wakeupDateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, v2}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0, p0}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_2

    :cond_8
    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_9

    const-string/jumbo p0, "[getNextAlarmDateTimeWithinSleepTime]Next Alarm is not within SleepTime"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    sget-object p0, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v0, p0}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object p0

    :cond_a
    :goto_3
    :try_start_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,alerttimeColumnIndex:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :goto_4
    if-eqz v4, :cond_b

    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    :try_start_7
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_5
    throw p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :goto_6
    const-string/jumbo v0, "[getNextAlarmDateTimeWithinSleepTime]Exception"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    return-object v3
.end method

.method public static -$$Nest$mgetSleepChargingStatus(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepPatterns:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/DayOfWeek;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;

    const/4 v2, 0x0

    const-string/jumbo v3, "[SS]SleepChargingTimeController"

    if-nez v1, :cond_0

    const-string p0, "Fail to get todaySleepPattern => Fail to getSleepChargingStatus"

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    iget-wide v4, v1, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;->wakeupTimeMillis:J

    invoke-static {v4, v5}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v4

    const-string/jumbo v5, "UTC"

    invoke-static {v5}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v4

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v4

    sget-object v6, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v4, v6}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[getSleepChargingStatus]todayWakeupDateTime:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    if-eqz v6, :cond_1

    iget-object v6, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->matchedDate:Ljava/time/LocalDate;

    invoke-virtual {v6, v5}, Ljava/time/LocalDate;->isEqual(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    iget-object v6, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->wakeupDateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, v6}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v4

    if-nez v4, :cond_3

    :goto_0
    const-wide/16 v4, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepPatterns:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/DayOfWeek;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;

    if-nez v1, :cond_2

    const-string p0, "Fail to get tomorrowSleepPattern => Fail to getSleepChargingStatus"

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    const-string/jumbo v2, "[getSleepChargingStatus]tomorrow SleepChargingStatus created"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;-><init>(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;Ljava/time/LocalDate;)V

    return-object v2

    :cond_3
    const-string/jumbo v0, "[getSleepChargingStatus]today SleepChargingStatus created"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    invoke-direct {v0, p0, v1, v5}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;-><init>(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;Ljava/time/LocalDate;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v0

    sput-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mRuglarUpdateCheckTime:Ljava/time/LocalTime;

    const-string/jumbo v0, "content://com.samsung.sec.android.clockpackage/alarm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->ALARM_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final activateAlarmChangedObserver(Z)V
    .locals 3

    const-string/jumbo v0, "[activateAlarmChangedObserver]activate:"

    const-string/jumbo v1, "[SS]SleepChargingTimeController"

    invoke-static {v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$AlarmChangedObserver;

    invoke-direct {v0, p0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$AlarmChangedObserver;-><init>(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)V

    iput-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mAlarmChangedObserver:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$AlarmChangedObserver;

    sget-object p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->ALARM_CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, p0, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mAlarmChangedObserver:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$AlarmChangedObserver;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mAlarmChangedObserver:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$AlarmChangedObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mAlarmChangedObserver:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$AlarmChangedObserver;

    :cond_1
    return-void
.end method

.method public final activateDeviceTimeChangedReceiver(Z)V
    .locals 2

    const-string/jumbo v0, "[activateDeviceTimeChangedReceiver]activate:"

    const-string/jumbo v1, "[SS]SleepChargingTimeController"

    invoke-static {v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;-><init>(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;I)V

    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mDeviceTimeChangedReceiver:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;

    const-string/jumbo p1, "android.intent.action.TIME_SET"

    const-string/jumbo v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-static {p1, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mDeviceTimeChangedReceiver:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mDeviceTimeChangedReceiver:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mDeviceTimeChangedReceiver:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;

    :cond_1
    return-void
.end method

.method public final activateTimeReachedReceiver(Z)V
    .locals 2

    const-string/jumbo v0, "[activateTimeReachedReceiver]activate:"

    const-string/jumbo v1, "[SS]SleepChargingTimeController"

    invoke-static {v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;-><init>(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;I)V

    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mTimeReachedReceiver:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "ACTION_EXACT_NOTI_NOW_UPDATE_TIME"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "ACTION_EXACT_NOTI_NOW_SLEEP_CHARGING_START_TIME"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "ACTION_EXACT_NOTI_NOW_WAKEUP_TIME"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "ACTION_EXACT_NOTI_NOW_SLEEP_CHARGING_END_TIME"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mTimeReachedReceiver:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mTimeReachedReceiver:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mTimeReachedReceiver:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;

    :cond_1
    return-void
.end method

.method public final getInfoForOn()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    const-string v2, ",  "

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "wakeupDateTime:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    iget-object v3, v3, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->wakeupDateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mNextAlarmDateTimeWithinSleepTime:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mNextAlarmDateTimeWithinSleepTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mSavedMinutesToFullCharge:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSavedMinutesToFullCharge:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mSleepChargingEndDateTime:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isActivated()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsTodaySleepChargingFinished:Z

    const/4 v1, 0x0

    const-string/jumbo v2, "[SS]SleepChargingTimeController"

    if-eqz v0, :cond_0

    const-string/jumbo p0, "[isActivated]mIsTodaySleepChargingFinished true => false"

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    if-nez p0, :cond_1

    const-string/jumbo p0, "[isActivated]mSleepChargingStatus null => false"

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->isConfident:Z

    if-nez v0, :cond_2

    const-string/jumbo p0, "[isActivated]mSleepChargingStatus Confident False => false"

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-boolean p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->isNowSessionTime:Z

    if-nez p0, :cond_3

    const-string/jumbo p0, "[isActivated]mSleepChargingStatus isNowSessionTime False => false"

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const-string/jumbo p0, "[isActivated]true"

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final isNowSleepChargingTime(I)Z
    .locals 4

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    iget-object v1, v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->expectedFullChargeDateTime:Ljava/time/LocalDateTime;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/time/LocalDateTime;->minusMinutes(J)Ljava/time/LocalDateTime;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    iget-object v2, v2, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->sleepChargingStartDateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v0, v2}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    iget p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSavedMinutesToFullCharge:I

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[isNowSleepChargingTime]alarm:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mNextAlarmDateTimeWithinSleepTime:Ljava/time/LocalDateTime;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ,minsToFullCharge:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ,sleepTime:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    iget-object p1, p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->bedDateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ~ "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    iget-object v3, v3, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->wakeupDateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ,sleepChargingTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->sleepChargingStartDateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " ,result: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "[SS]SleepChargingTimeController"

    invoke-static {p0, v2, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    return v0
.end method

.method public final reset(Z)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[reset]isEnd:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "[SS]SleepChargingTimeController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->activateDeviceTimeChangedReceiver(Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->activateAlarmChangedObserver(Z)V

    const-string v2, "ACTION_EXACT_NOTI_NOW_UPDATE_TIME"

    invoke-virtual {p0, v2}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->unsetTimeNoti(Ljava/lang/String;)V

    const-string v2, "ACTION_EXACT_NOTI_NOW_SLEEP_CHARGING_START_TIME"

    invoke-virtual {p0, v2}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->unsetTimeNoti(Ljava/lang/String;)V

    const-string v2, "ACTION_EXACT_NOTI_NOW_WAKEUP_TIME"

    invoke-virtual {p0, v2}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->unsetTimeNoti(Ljava/lang/String;)V

    const-string v2, "ACTION_EXACT_NOTI_NOW_SLEEP_CHARGING_END_TIME"

    invoke-virtual {p0, v2}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->unsetTimeNoti(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iput-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

    iput-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsTodaySleepChargingFinished:Z

    iput-boolean v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsUserDismissSleepCharging:Z

    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string/jumbo v0, "[reset]sleep exception"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final setTimeNoti(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const-string/jumbo v1, "[SS]SleepChargingTimeController"

    if-nez v0, :cond_0

    const-string p1, "Fail - AlarmManager null"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;

    const/16 p1, 0x15

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "ACTION_EXACT_NOTI_NOW_SLEEP_CHARGING_END_TIME"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_1
    const-string v2, "ACTION_EXACT_NOTI_NOW_SLEEP_CHARGING_START_TIME"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :sswitch_2
    const-string v2, "ACTION_EXACT_NOTI_NOW_UPDATE_TIME"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_1

    :sswitch_3
    const-string v2, "ACTION_EXACT_NOTI_NOW_WAKEUP_TIME"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, -0x1

    :goto_1
    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_3

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

    iput-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledSleepChargingEndTime:Ljava/time/LocalDateTime;

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    iget-object v2, v2, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->wakeupDateTime:Ljava/time/LocalDateTime;

    iput-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledWakeupTime:Ljava/time/LocalDateTime;

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    iget-object v2, v2, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->sleepChargingStartDateTime:Ljava/time/LocalDateTime;

    iput-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledSleepChargingStartTime:Ljava/time/LocalDateTime;

    goto :goto_3

    :cond_4
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v3

    sget-object v4, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mRuglarUpdateCheckTime:Ljava/time/LocalTime;

    invoke-virtual {v3, v4}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v2

    invoke-static {v2, v4}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v2

    const-wide/16 v6, 0x1

    invoke-virtual {v2, v6, v7}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v2

    invoke-static {v2, v4}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledUpdateTime:Ljava/time/LocalDateTime;

    :goto_3
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    const/high16 v7, 0x4000000

    invoke-static {p0, v5, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v0, v5, v3, v4, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "[setTimeNoti]action:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,scheduledTime:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x60d45d7c -> :sswitch_3
        -0x2f5f68c6 -> :sswitch_2
        -0x2711cbd9 -> :sswitch_1
        -0x119aed72 -> :sswitch_0
    .end sparse-switch
.end method

.method public final unsetTimeNoti(Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v0, "[unsetTimeNoti]action:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "[SS]SleepChargingTimeController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    const-string p0, "Fail - AlarmManager null"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "ACTION_EXACT_NOTI_NOW_SLEEP_CHARGING_END_TIME"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "ACTION_EXACT_NOTI_NOW_SLEEP_CHARGING_START_TIME"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_1

    :sswitch_2
    const-string v1, "ACTION_EXACT_NOTI_NOW_UPDATE_TIME"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :sswitch_3
    const-string v1, "ACTION_EXACT_NOTI_NOW_WAKEUP_TIME"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const/4 v5, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v2, :cond_2

    iput-object v5, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledSleepChargingEndTime:Ljava/time/LocalDateTime;

    goto :goto_2

    :cond_2
    iput-object v5, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledWakeupTime:Ljava/time/LocalDateTime;

    goto :goto_2

    :cond_3
    iput-object v5, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledSleepChargingStartTime:Ljava/time/LocalDateTime;

    goto :goto_2

    :cond_4
    iput-object v5, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mScheduledUpdateTime:Ljava/time/LocalDateTime;

    :goto_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mContext:Landroid/content/Context;

    const/high16 p1, 0x4000000

    invoke-static {p0, v3, v1, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x60d45d7c -> :sswitch_3
        -0x2f5f68c6 -> :sswitch_2
        -0x2711cbd9 -> :sswitch_1
        -0x119aed72 -> :sswitch_0
    .end sparse-switch
.end method

.method public final updateSleepChargingEndTime(IZ)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[updateSleepChargingEndTime]isSleepCharging:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,minutesToFullCharge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "[SS]SleepChargingTimeController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ACTION_EXACT_NOTI_NOW_SLEEP_CHARGING_END_TIME"

    if-eqz p2, :cond_0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    iput p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSavedMinutesToFullCharge:I

    iget-object p2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    iget-object p2, p2, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->expectedFullChargeDateTime:Ljava/time/LocalDateTime;

    int-to-long v2, p1

    invoke-virtual {p2, v2, v3}, Ljava/time/LocalDateTime;->minusMinutes(J)Ljava/time/LocalDateTime;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

    invoke-virtual {p0, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->setTimeNoti(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    iget-object p1, p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->expectedFullChargeDateTime:Ljava/time/LocalDateTime;

    iget p2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSavedMinutesToFullCharge:I

    int-to-long v2, p2

    invoke-virtual {p1, v2, v3}, Ljava/time/LocalDateTime;->minusMinutes(J)Ljava/time/LocalDateTime;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

    invoke-virtual {p0, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->setTimeNoti(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

    invoke-virtual {p0, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->unsetTimeNoti(Ljava/lang/String;)V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "[updateSleepChargingEndTime]mSleepChargingEndDateTime:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingEndDateTime:Ljava/time/LocalDateTime;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
