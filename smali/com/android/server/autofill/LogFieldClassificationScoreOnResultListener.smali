.class public final Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final mAutofillIds:[Landroid/view/autofill/AutofillId;

.field public final mCategoryIds:[Ljava/lang/String;

.field public final mCommitReason:I

.field public final mDetectedFieldClassifications:Ljava/util/ArrayList;

.field public final mDetectedFieldIds:Ljava/util/ArrayList;

.field public final mSaveDialogNotShowReason:I

.field public mSession:Lcom/android/server/autofill/Session;

.field public final mUserValues:[Ljava/lang/String;

.field public final mViewsSize:I


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/Session;III[Landroid/view/autofill/AutofillId;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mSession:Lcom/android/server/autofill/Session;

    iput p2, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mSaveDialogNotShowReason:I

    iput p3, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mCommitReason:I

    iput p4, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mViewsSize:I

    iput-object p5, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mAutofillIds:[Landroid/view/autofill/AutofillId;

    iput-object p6, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mUserValues:[Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mCategoryIds:[Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mDetectedFieldIds:Ljava/util/ArrayList;

    iput-object p9, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mDetectedFieldClassifications:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mSession:Lcom/android/server/autofill/Session;

    if-nez v2, :cond_0

    const-string/jumbo v0, "LogFieldClassificationScoreOnResultListener"

    const-string/jumbo v1, "session is null when calling onResult()"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v3, v1, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mSaveDialogNotShowReason:I

    iget v4, v1, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mCommitReason:I

    iget v5, v1, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mViewsSize:I

    iget-object v6, v1, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mAutofillIds:[Landroid/view/autofill/AutofillId;

    iget-object v7, v1, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mUserValues:[Ljava/lang/String;

    iget-object v8, v1, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mCategoryIds:[Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mDetectedFieldIds:Ljava/util/ArrayList;

    iget-object v10, v1, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mDetectedFieldClassifications:Ljava/util/ArrayList;

    const-string v11, "AutofillSession"

    const/4 v12, 0x0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "setFieldClassificationScore(): no results"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v13, v2, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_0
    invoke-virtual {v2, v12, v12, v3, v4}, Lcom/android/server/autofill/Session;->logContextCommittedLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    monitor-exit v13

    :goto_0
    move-object v2, v12

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    const-string/jumbo v13, "scores"

    const-class v14, Landroid/service/autofill/AutofillFieldClassificationService$Scores;

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/service/autofill/AutofillFieldClassificationService$Scores;

    if-nez v13, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "No field classification score on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    if-ge v14, v5, :cond_e

    :try_start_1
    aget-object v15, v6, v14
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3

    move/from16 v16, v5

    move-object v0, v12

    const/4 v12, 0x0

    :goto_2
    :try_start_2
    array-length v5, v7

    if-ge v12, v5, :cond_a

    aget-object v5, v8, v12

    move-object/from16 v17, v6

    iget-object v6, v13, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    aget-object v6, v6, v14

    aget v6, v6, v12
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v18, 0x0

    cmpl-float v18, v6, v18

    move-object/from16 v19, v8

    const-string v8, " and id "

    if-lez v18, :cond_8

    if-nez v0, :cond_4

    :try_start_3
    new-instance v0, Landroid/util/ArrayMap;
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    move/from16 v18, v14

    :try_start_4
    array-length v14, v7

    invoke-direct {v0, v14}, Landroid/util/ArrayMap;-><init>(I)V

    goto :goto_4

    :catch_0
    move-exception v0

    :goto_3
    move v15, v12

    goto/16 :goto_9

    :catch_1
    move-exception v0

    move/from16 v18, v14

    goto :goto_3

    :cond_4
    move/from16 v18, v14

    :goto_4
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    if-eqz v14, :cond_6

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v20

    cmpl-float v20, v20, v6

    if-lez v20, :cond_6

    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "skipping score "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " because it\'s less than "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v20, v7

    goto :goto_6

    :cond_6
    sget-boolean v14, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v14, :cond_7

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v7

    const-string/jumbo v7, "adding score "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " at index "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    move-object/from16 v20, v7

    :goto_5
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_8
    move-object/from16 v20, v7

    move/from16 v18, v14

    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "skipping score 0 at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_6
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, v17

    move/from16 v14, v18

    move-object/from16 v8, v19

    move-object/from16 v7, v20

    goto/16 :goto_2

    :cond_a
    move-object/from16 v17, v6

    move-object/from16 v20, v7

    move-object/from16 v19, v8

    move/from16 v18, v14

    if-nez v0, :cond_c

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no score for autofillId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move v15, v12

    goto :goto_8

    :cond_c
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v6, 0x0

    :goto_7
    :try_start_5
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_d

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    new-instance v12, Landroid/service/autofill/FieldClassification$Match;

    invoke-direct {v12, v7, v8}, Landroid/service/autofill/FieldClassification$Match;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :catch_2
    move-exception v0

    move v15, v6

    goto :goto_9

    :cond_d
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/service/autofill/FieldClassification;

    invoke-direct {v0, v5}, Landroid/service/autofill/FieldClassification;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2

    move v15, v6

    :goto_8
    add-int/lit8 v14, v18, 0x1

    move/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v8, v19

    move-object/from16 v7, v20

    const/4 v12, 0x0

    goto/16 :goto_1

    :catch_3
    move-exception v0

    move/from16 v18, v14

    :goto_9
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4, v13, v0}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Error accessing FC score at [%d, %d] (%s): %s"

    invoke-virtual {v2, v0, v4, v3}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_a
    const/4 v2, 0x0

    goto :goto_b

    :cond_e
    iget-object v5, v2, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_6
    invoke-virtual {v2, v9, v10, v3, v4}, Lcom/android/server/autofill/Session;->logContextCommittedLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_a

    :goto_b
    iput-object v2, v1, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mSession:Lcom/android/server/autofill/Session;

    return-void

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0
.end method
