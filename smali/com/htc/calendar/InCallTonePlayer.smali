.class public Lcom/htc/calendar/InCallTonePlayer;
.super Ljava/lang/Thread;
.source "InCallTonePlayer.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final TONE_OFF:I = 0x0

.field private static final TONE_ON:I = 0x1

.field private static final TONE_RELATIVE_VOLUME_HIPRI:I = 0x50

.field private static final TONE_RELATIVE_VOLUME_LOPRI:I = 0x32

.field private static final TONE_STOPPED:I = 0x2

.field private static final TONE_TIMEOUT_BUFFER:I = 0x14


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mState:I

.field private mStreamtype:I

.field private mTimeMilli:I

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneId:I

.field private mVibrate:I

.field private mVolume:I

.field private mbCmas:Z

.field private mbSpeakeron:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "InCallTonePlayer"

    sput-object v0, Lcom/htc/calendar/InCallTonePlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 3
    .parameter "context"
    .parameter "toneId"
    .parameter "timeMilli"
    .parameter "volume"

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 37
    const/16 v1, 0x1388

    iput v1, p0, Lcom/htc/calendar/InCallTonePlayer;->mTimeMilli:I

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/calendar/InCallTonePlayer;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 56
    const/16 v1, 0x32

    iput v1, p0, Lcom/htc/calendar/InCallTonePlayer;->mVolume:I

    .line 57
    iput v2, p0, Lcom/htc/calendar/InCallTonePlayer;->mStreamtype:I

    .line 58
    iput v2, p0, Lcom/htc/calendar/InCallTonePlayer;->mVibrate:I

    .line 59
    iput-boolean v2, p0, Lcom/htc/calendar/InCallTonePlayer;->mbCmas:Z

    .line 60
    iput-boolean v2, p0, Lcom/htc/calendar/InCallTonePlayer;->mbSpeakeron:Z

    .line 93
    iput p2, p0, Lcom/htc/calendar/InCallTonePlayer;->mToneId:I

    .line 94
    iput v2, p0, Lcom/htc/calendar/InCallTonePlayer;->mState:I

    .line 95
    iput-object p1, p0, Lcom/htc/calendar/InCallTonePlayer;->mContext:Landroid/content/Context;

    .line 96
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/htc/calendar/InCallTonePlayer$2;

    invoke-direct {v2, p0}, Lcom/htc/calendar/InCallTonePlayer$2;-><init>(Lcom/htc/calendar/InCallTonePlayer;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    iget-object v1, p0, Lcom/htc/calendar/InCallTonePlayer;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/htc/calendar/InCallTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 108
    iput p3, p0, Lcom/htc/calendar/InCallTonePlayer;->mTimeMilli:I

    .line 109
    iput p4, p0, Lcom/htc/calendar/InCallTonePlayer;->mVolume:I

    .line 112
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 113
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/calendar/InCallTonePlayer;->mbSpeakeron:Z

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 3
    .parameter "context"
    .parameter "toneId"
    .parameter "volume"
    .parameter "bcmas"

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 37
    const/16 v1, 0x1388

    iput v1, p0, Lcom/htc/calendar/InCallTonePlayer;->mTimeMilli:I

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/calendar/InCallTonePlayer;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 56
    const/16 v1, 0x32

    iput v1, p0, Lcom/htc/calendar/InCallTonePlayer;->mVolume:I

    .line 57
    iput v2, p0, Lcom/htc/calendar/InCallTonePlayer;->mStreamtype:I

    .line 58
    iput v2, p0, Lcom/htc/calendar/InCallTonePlayer;->mVibrate:I

    .line 59
    iput-boolean v2, p0, Lcom/htc/calendar/InCallTonePlayer;->mbCmas:Z

    .line 60
    iput-boolean v2, p0, Lcom/htc/calendar/InCallTonePlayer;->mbSpeakeron:Z

    .line 64
    iput p2, p0, Lcom/htc/calendar/InCallTonePlayer;->mToneId:I

    .line 65
    iput v2, p0, Lcom/htc/calendar/InCallTonePlayer;->mState:I

    .line 66
    iput-object p1, p0, Lcom/htc/calendar/InCallTonePlayer;->mContext:Landroid/content/Context;

    .line 67
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/htc/calendar/InCallTonePlayer$1;

    invoke-direct {v2, p0}, Lcom/htc/calendar/InCallTonePlayer$1;-><init>(Lcom/htc/calendar/InCallTonePlayer;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    iget-object v1, p0, Lcom/htc/calendar/InCallTonePlayer;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/htc/calendar/InCallTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 79
    iput p3, p0, Lcom/htc/calendar/InCallTonePlayer;->mVolume:I

    .line 80
    iput-boolean p4, p0, Lcom/htc/calendar/InCallTonePlayer;->mbCmas:Z

    .line 83
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 84
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/calendar/InCallTonePlayer;->mbSpeakeron:Z

    .line 89
    return-void
.end method

.method static synthetic access$002(Lcom/htc/calendar/InCallTonePlayer;Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/CallManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/calendar/InCallTonePlayer;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/htc/calendar/InCallTonePlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private resetAudioStateAfterDisconnect()V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/htc/calendar/InCallTonePlayer;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/htc/calendar/InCallTonePlayer;->mbSpeakeron:Z

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/htc/calendar/InCallTonePlayer;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 215
    iget-object v0, p0, Lcom/htc/calendar/InCallTonePlayer;->mCM:Lcom/android/internal/telephony/CallManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/calendar/InCallTonePlayer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0, v0}, Lcom/htc/calendar/InCallTonePlayer;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 216
    :cond_0
    return-void
.end method

.method private setAudioMode(Lcom/android/internal/telephony/CallManager;)V
    .locals 5
    .parameter "cm"

    .prologue
    .line 240
    iget-object v3, p0, Lcom/htc/calendar/InCallTonePlayer;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 242
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    .line 243
    .local v2, modeBefore:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->setAudioMode()V

    .line 244
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 246
    .local v1, modeAfter:I
    if-eq v2, v1, :cond_0

    .line 250
    :cond_0
    return-void
.end method

.method static turnOnSpeaker(Landroid/content/Context;ZZ)V
    .locals 2
    .parameter "context"
    .parameter "flag"
    .parameter "store"

    .prologue
    .line 219
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 221
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 236
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 134
    iget-object v6, p0, Lcom/htc/calendar/InCallTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 205
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v6, p0, Lcom/htc/calendar/InCallTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v8}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v6

    iput v6, p0, Lcom/htc/calendar/InCallTonePlayer;->mVibrate:I

    .line 138
    iget-object v6, p0, Lcom/htc/calendar/InCallTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v8, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 144
    :try_start_0
    iget-boolean v6, p0, Lcom/htc/calendar/InCallTonePlayer;->mbCmas:Z

    if-eqz v6, :cond_1

    const/4 v4, 0x5

    .line 146
    .local v4, stream:I
    :cond_1
    new-instance v5, Landroid/media/ToneGenerator;

    iget v6, p0, Lcom/htc/calendar/InCallTonePlayer;->mVolume:I

    invoke-direct {v5, v4, v6}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v4           #stream:I
    .local v5, toneGenerator:Landroid/media/ToneGenerator;
    :goto_1
    const/4 v1, 0x1

    .line 167
    .local v1, needToStopTone:Z
    const/4 v2, 0x0

    .line 169
    .local v2, okToPlayTone:Z
    if-eqz v5, :cond_2

    .line 170
    iput-object v5, p0, Lcom/htc/calendar/InCallTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 171
    iget-object v6, p0, Lcom/htc/calendar/InCallTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 172
    .local v3, ringerMode:I
    const/4 v2, 0x1

    .line 175
    .end local v3           #ringerMode:I
    :cond_2
    iget-object v6, p0, Lcom/htc/calendar/InCallTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v6, :cond_3

    .line 176
    iget-object v6, p0, Lcom/htc/calendar/InCallTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    iget v7, p0, Lcom/htc/calendar/InCallTonePlayer;->mToneId:I

    invoke-virtual {v6, v7}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 178
    :cond_3
    iget v6, p0, Lcom/htc/calendar/InCallTonePlayer;->mTimeMilli:I

    add-int/lit8 v6, v6, 0x14

    int-to-long v6, v6

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 180
    iget-object v6, p0, Lcom/htc/calendar/InCallTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v6, :cond_4

    .line 181
    iget-object v6, p0, Lcom/htc/calendar/InCallTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v6}, Landroid/media/ToneGenerator;->stopTone()V

    .line 182
    iget-object v6, p0, Lcom/htc/calendar/InCallTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v6}, Landroid/media/ToneGenerator;->release()V

    .line 183
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/calendar/InCallTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 199
    :cond_4
    iget-object v6, p0, Lcom/htc/calendar/InCallTonePlayer;->mCM:Lcom/android/internal/telephony/CallManager;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/htc/calendar/InCallTonePlayer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v7, :cond_5

    .line 200
    invoke-direct {p0}, Lcom/htc/calendar/InCallTonePlayer;->resetAudioStateAfterDisconnect()V

    .line 204
    :cond_5
    iget-object v6, p0, Lcom/htc/calendar/InCallTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    iget v7, p0, Lcom/htc/calendar/InCallTonePlayer;->mVibrate:I

    invoke-virtual {v6, v8, v7}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto :goto_0

    .line 148
    .end local v1           #needToStopTone:Z
    .end local v2           #okToPlayTone:Z
    .end local v5           #toneGenerator:Landroid/media/ToneGenerator;
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/RuntimeException;
    const/4 v5, 0x0

    .restart local v5       #toneGenerator:Landroid/media/ToneGenerator;
    goto :goto_1
.end method

.method public stopTone()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/calendar/InCallTonePlayer;->mState:I

    .line 124
    iget-object v0, p0, Lcom/htc/calendar/InCallTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/htc/calendar/InCallTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 126
    iget-object v0, p0, Lcom/htc/calendar/InCallTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/calendar/InCallTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 129
    :cond_0
    return-void
.end method
