.class public final Lcom/android/server/am/ServiceRecord$ShortFgsInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mStartForegroundCount:I

.field public mStartId:I

.field public final mStartTime:J

.field public final synthetic this$0:Lcom/android/server/am/ServiceRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ServiceRecord;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->this$0:Lcom/android/server/am/ServiceRecord;

    iput-wide p2, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartTime:J

    iget p2, p1, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    iput p2, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartForegroundCount:I

    iget p1, p1, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    iput p1, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartId:I

    return-void
.end method


# virtual methods
.method public final getAnrTime()J
    .locals 4

    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartTime:J

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsTimeoutDuration:J

    add-long/2addr v0, v2

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsAnrExtraWaitDuration:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final getProcStateDemoteTime()J
    .locals 4

    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartTime:J

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsTimeoutDuration:J

    add-long/2addr v0, v2

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsProcStateExtraWaitDuration:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final getTimeoutTime()J
    .locals 4

    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartTime:J

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsTimeoutDuration:J

    add-long/2addr v0, v2

    return-wide v0
.end method
