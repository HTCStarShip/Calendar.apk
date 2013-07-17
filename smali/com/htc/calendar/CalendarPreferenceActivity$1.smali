.class Lcom/htc/calendar/CalendarPreferenceActivity$1;
.super Ljava/lang/Object;
.source "CalendarPreferenceActivity.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/CalendarPreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/CalendarPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/CalendarPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/htc/calendar/CalendarPreferenceActivity$1;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 283
    const-string v0, "CalendarPreferenceActivity"

    const-string v1, "Set Lunar enable or not"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity$1;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    iget-object v1, p0, Lcom/htc/calendar/CalendarPreferenceActivity$1;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    iget-object v1, v1, Lcom/htc/calendar/CalendarPreferenceActivity;->mEnableLunar:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v1

    #calls: Lcom/htc/calendar/CalendarPreferenceActivity;->saveLunarSettings(Z)V
    invoke-static {v0, v1}, Lcom/htc/calendar/CalendarPreferenceActivity;->access$000(Lcom/htc/calendar/CalendarPreferenceActivity;Z)V

    .line 285
    const/4 v0, 0x0

    return v0
.end method
