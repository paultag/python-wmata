;;;
;;;

(import requests)

(def *api-key* nil)


(defn get-json [service path params]
  (let [[url (.format "http://api.wmata.com/{}.svc/json/{}" service path)]]
    (assoc params "api_key" *api-key*)
    (.json (apply requests.get [url] {"params" params}))))
