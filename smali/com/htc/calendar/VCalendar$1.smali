.class final Lcom/htc/calendar/VCalendar$1;
.super Ljava/lang/Object;
.source "VCalendar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/VCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 116
    const-string v0, "VCalendar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchShareVCalMenu onClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    if-nez p2, :cond_1

    .line 120
    invoke-static {}, Lcom/htc/calendar/VCalendar;->access$000()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/htc/calendar/VCalendar;->access$100()J

    move-result-wide v1

    invoke-static {}, Lcom/htc/calendar/VCalendar;->access$200()J

    move-result-wide v3

    invoke-static {}, Lcom/htc/calendar/VCalendar;->access$300()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/htc/calendar/VCalendar;->sent_vCalendar_BT(Landroid/app/Activity;JJJ)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 123
    invoke-static {}, Lcom/htc/calendar/VCalendar;->access$000()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/htc/calendar/VCalendar;->access$100()J

    move-result-wide v1

    invoke-static {}, Lcom/htc/calendar/VCalendar;->access$200()J

    move-result-wide v3

    invoke-static {}, Lcom/htc/calendar/VCalendar;->access$300()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/htc/calendar/VCalendar;->sent_vCalendar_Mail(Landroid/app/Activity;JJJ)V

    goto :goto_0

    .line 124
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 126
    invoke-static {}, Lcom/htc/calendar/VCalendar;->access$000()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/htc/calendar/VCalendar;->access$100()J

    move-result-wide v1

    invoke-static {}, Lcom/htc/calendar/VCalendar;->access$200()J

    move-result-wide v3

    invoke-static {}, Lcom/htc/calendar/VCalendar;->access$300()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/htc/calendar/VCalendar;->sent_vCalendar_Mms(Landroid/app/Activity;JJJ)V

    goto :goto_0
.end method
