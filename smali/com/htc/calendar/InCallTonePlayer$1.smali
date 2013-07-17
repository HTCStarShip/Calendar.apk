.class Lcom/htc/calendar/InCallTonePlayer$1;
.super Ljava/lang/Object;
.source "InCallTonePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/InCallTonePlayer;-><init>(Landroid/content/Context;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/InCallTonePlayer;


# direct methods
.method constructor <init>(Lcom/htc/calendar/InCallTonePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/calendar/InCallTonePlayer$1;->this$0:Lcom/htc/calendar/InCallTonePlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/htc/calendar/InCallTonePlayer$1;->this$0:Lcom/htc/calendar/InCallTonePlayer;

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    #setter for: Lcom/htc/calendar/InCallTonePlayer;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v1, v2}, Lcom/htc/calendar/InCallTonePlayer;->access$002(Lcom/htc/calendar/InCallTonePlayer;Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/CallManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/calendar/InCallTonePlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "call manager init fail 1!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
