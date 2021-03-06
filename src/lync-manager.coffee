edge = require 'edge'
path = require 'path'

references = [
  'Microsoft.Lync.Model.dll'
  'Microsoft.Lync.Controls.dll'
  'Microsoft.Lync.Utilities.dll'
  'Microsoft.Lync.Controls.Resources.dll'
  'Microsoft.Lync.Controls.Framework.dll'
  'Microsoft.Lync.Controls.Framework.Resources.dll'
  'Microsoft.Office.Uc.dll'
]

createMeeting = edge.func
  source: path.join __dirname, 'csharp/create-meeting.cs'
  references: references

joinMeeting = edge.func
  source: path.join __dirname, 'csharp/join-meeting.cs'
  references: references

startVideo = edge.func
  source: path.join __dirname, 'csharp/start-video.cs'
  references: references

stopVideo = edge.func
  source: path.join __dirname, 'csharp/stop-video.cs'
  references: references

stopMeetings = edge.func
  source: path.join __dirname, 'csharp/stop-meetings.cs'
  references: references

mute = edge.func
  source: path.join __dirname, 'csharp/mute-self.cs'
  references: references

unmute = edge.func
  source: path.join __dirname, 'csharp/unmute-self.cs'
  references: references

getConferenceUri = edge.func
  source: path.join __dirname, 'csharp/get-conferencing-uri.cs'
  references: references

getState = edge.func
  source: path.join __dirname, 'csharp/get-state.cs'
  references: references

emitEvents = edge.func
  source: path.join __dirname, 'csharp/emit-events.cs'
  references: references

module.exports = {
  createMeeting: createMeeting
  joinMeeting: joinMeeting
  startVideo: startVideo
  stopVideo: stopVideo
  stopMeetings: stopMeetings
  mute: mute
  unmute: unmute
  getConferenceUri: getConferenceUri
  getState: getState
  emitEvents: emitEvents
}
